.class public final Landroid/bluetooth/BluetoothA2dp;
.super Ljava/lang/Object;
.source "BluetoothA2dp.java"


# static fields
.field public static final ACTION_SINK_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final EXTRA_PREVIOUS_SINK_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

.field public static final EXTRA_SINK_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.extra.SINK_STATE"

.field public static final PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final PRIORITY_OFF:I = 0x0

.field public static final PRIORITY_ON:I = 0x64

.field public static final PRIORITY_UNDEFINED:I = -0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_PLAYING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dp"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/bluetooth/IBluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    .line 100
    const-string v1, "bluetooth_a2dp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 101
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_14

    .line 102
    invoke-static {v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    .line 110
    :goto_13
    return-void

    .line 104
    :cond_14
    const-string v1, "BluetoothA2dp"

    const-string v2, "Bluetooth A2DP service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    goto :goto_13
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 347
    const-string v0, "BluetoothA2dp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 330
    packed-switch p0, :pswitch_data_2e

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 332
    :pswitch_1d
    const-string v0, "disconnected"

    goto :goto_1c

    .line 334
    :pswitch_20
    const-string v0, "connecting"

    goto :goto_1c

    .line 336
    :pswitch_23
    const-string v0, "connected"

    goto :goto_1c

    .line 338
    :pswitch_26
    const-string v0, "disconnecting"

    goto :goto_1c

    .line 340
    :pswitch_29
    const-string/jumbo v0, "playing"

    goto :goto_1c

    .line 330
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 6
    .parameter "device"
    .parameter "value"

    .prologue
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowIncomingConnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 318
    :try_start_1c
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_23

    move-result v1

    .line 321
    :goto_22
    return v1

    .line 319
    :catch_23
    move-exception v1

    move-object v0, v1

    .line 320
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public connectSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 121
    const-string v1, "connectSink()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 123
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->connectSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 126
    :goto_b
    return v1

    .line 124
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 125
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 139
    const-string v1, "disconnectSink()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 141
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 144
    :goto_b
    return v1

    .line 142
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getConnectedSinks()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const-string v1, "getConnectedSinks()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 199
    :try_start_5
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dp;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_17} :catch_19

    move-result-object v1

    .line 203
    :goto_18
    return-object v1

    .line 201
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getNonDisconnectedSinks()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    const-string v1, "getNonDisconnectedSinks()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 215
    :try_start_5
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dp;->getNonDisconnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_17} :catch_19

    move-result-object v1

    .line 219
    :goto_18
    return-object v1

    .line 217
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 269
    const-string v1, "getSinkPriority()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 271
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 274
    :goto_b
    return v1

    .line 272
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 273
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getSinkState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 230
    const-string v1, "getSinkState()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 232
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 235
    :goto_b
    return v1

    .line 233
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 234
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isSinkConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .parameter "device"

    .prologue
    .line 187
    const-string v1, "isSinkConnected()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 189
    .local v0, state:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    :cond_f
    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public isSuspended()Z
    .registers 4

    .prologue
    .line 298
    const-string v1, "isSuspended()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 300
    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dp;->isSuspended()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 303
    :goto_b
    return v1

    .line 301
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 176
    :goto_6
    return v1

    .line 174
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSinkPriority("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 255
    :try_start_1d
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothA2dp;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_24

    move-result v1

    .line 258
    :goto_23
    return v1

    .line 256
    :catch_24
    move-exception v1

    move-object v0, v1

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public setSuspended(Z)V
    .registers 5
    .parameter "val"

    .prologue
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSuspended("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->log(Ljava/lang/String;)V

    .line 287
    :try_start_1d
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->setSuspended(Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    .line 291
    :goto_22
    return-void

    .line 288
    :catch_23
    move-exception v1

    move-object v0, v1

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 160
    :goto_6
    return v1

    .line 158
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v1, 0x0

    goto :goto_6
.end method
