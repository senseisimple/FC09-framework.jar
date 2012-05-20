.class public Lcom/broadcom/bt/service/hid/BluetoothHIDService;
.super Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;
.source "BluetoothHIDService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_HID_SERVICE:Ljava/lang/String; = "bluetooth_hid"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PERM_WARNING:Ljava/lang/String; = "Need BLUETOOTH_ADMIN permission"

.field private static final HH_STATUS_DB_FULL:I = 0x21

.field private static final HH_STATUS_DRIVER_ERR:I = 0x22

.field private static final HH_STATUS_ERR:I = 0x20

.field private static final HH_STATUS_OK:I = 0x0

.field private static final MESSAGE_CORRUPTED_INFO:I = 0x3

.field private static final MESSAGE_DISABLE_BT:I = 0x1

.field private static final MESSAGE_TOO_MANY_DEV:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothHIDService"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 69
    invoke-static {}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->classInitNative()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .registers 5
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;-><init>()V

    .line 72
    new-instance v0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;-><init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;-><init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 153
    iput-object p2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 154
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v0, :cond_24

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Platform does not support Bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 160
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->initNative()V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/hid/BluetoothHIDService;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/hid/BluetoothHIDService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->handleBtDisableMsg(I)V

    return-void
.end method

.method private native addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private declared-synchronized completeDisable()V
    .registers 4

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    const-string v1, "BluetoothHIDService"

    const-string v2, "HID profile has been disconnected."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disableNative()V

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.PROFILE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 201
    monitor-exit p0

    return-void

    .line 195
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native connectHidNative(Ljava/lang/String;I)V
.end method

.method private native disableNative()V
.end method

.method private native disconnectHidNative(Ljava/lang/String;)V
.end method

.method private native enableNative()V
.end method

.method private declared-synchronized findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 5
    .parameter "address"

    .prologue
    .line 681
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 682
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_26

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v0

    .line 686
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :goto_22
    monitor-exit p0

    return-object v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_22

    .line 681
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native getProtocolModeNative(Ljava/lang/String;)V
.end method

.method private native getReportNative(Ljava/lang/String;BBI)V
.end method

.method private declared-synchronized handleBtDisableMsg(I)V
    .registers 10
    .parameter "delayCount"

    .prologue
    const-string v5, "BluetoothHIDService"

    .line 204
    monitor-enter p0

    :try_start_3
    const-string v5, "BluetoothHIDService"

    const-string v6, "handleBtDisableMsg"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v5, :cond_1a

    .line 207
    const-string v5, "BluetoothHIDService"

    const-string v6, "#### handleBtDisableMsg: mDevices is null ####"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_30

    .line 247
    :goto_18
    monitor-exit p0

    return-void

    .line 212
    :cond_1a
    :try_start_1a
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 213
    const-string v5, "BluetoothHIDService"

    const-string v6, "handleBtDisableMsg: mDevices is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 215
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_30

    goto :goto_18

    .line 204
    :catchall_30
    move-exception v5

    monitor-exit p0

    throw v5

    .line 219
    :cond_33
    const/4 v1, 0x1

    .line 220
    .local v1, disconnectDone:Z
    :try_start_34
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 221
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 223
    .local v4, state:I
    const-string v5, "BluetoothHIDService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBtDisableMsg: state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    packed-switch v4, :pswitch_data_92

    goto :goto_3e

    .line 228
    :pswitch_6a
    if-lez p1, :cond_6e

    .line 229
    const/4 v1, 0x0

    goto :goto_3e

    .line 232
    :cond_6e
    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_3e

    .line 238
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #state:I
    :cond_73
    if-eqz v1, :cond_81

    .line 239
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 240
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 241
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V

    goto :goto_18

    .line 244
    :cond_81
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v5, v6, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 245
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_90
    .catchall {:try_start_34 .. :try_end_90} :catchall_30

    goto :goto_18

    .line 224
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
    .end packed-switch
.end method

.method private native initNative()V
.end method

.method private declared-synchronized onBluetoothDisable()V
    .registers 10

    .prologue
    const-string v5, "BluetoothHIDService"

    .line 250
    monitor-enter p0

    :try_start_3
    const-string v5, "BluetoothHIDService"

    const-string/jumbo v6, "onBluetoothDisable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v5, :cond_1b

    .line 253
    const-string v5, "BluetoothHIDService"

    const-string v6, "#### onBluetoothDisable: mDevices is null ####"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_32

    .line 292
    :goto_19
    monitor-exit p0

    return-void

    .line 258
    :cond_1b
    :try_start_1b
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 259
    const-string v5, "BluetoothHIDService"

    const-string/jumbo v6, "onBluetoothDisable: mDevices is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 261
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_32

    goto :goto_19

    .line 250
    :catchall_32
    move-exception v5

    monitor-exit p0

    throw v5

    .line 265
    :cond_35
    const/4 v1, 0x1

    .line 266
    .local v1, disconnectDone:Z
    :try_start_36
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 267
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 269
    .local v4, state:I
    const-string v5, "BluetoothHIDService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onBluetoothDisable: state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    packed-switch v4, :pswitch_data_9c

    goto :goto_40

    .line 273
    :pswitch_6d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 274
    const/4 v5, 0x3

    invoke-direct {p0, v0, v4, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 275
    const/4 v1, 0x0

    .line 276
    goto :goto_40

    .line 278
    :pswitch_7a
    const/4 v1, 0x0

    goto :goto_40

    .line 283
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #state:I
    :cond_7c
    if-eqz v1, :cond_8a

    .line 284
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 285
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 286
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V

    goto :goto_19

    .line 289
    :cond_8a
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 290
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_9a
    .catchall {:try_start_36 .. :try_end_9a} :catchall_32

    goto/16 :goto_19

    .line 270
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6d
        :pswitch_7a
    .end packed-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .registers 3

    .prologue
    const-string v0, "BluetoothHIDService"

    .line 186
    monitor-enter p0

    :try_start_3
    const-string v0, "BluetoothHIDService"

    const-string/jumbo v1, "onBluetoothEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_16

    .line 188
    const-string v0, "BluetoothHIDService"

    const-string v1, "#### onBluetoothEnable: mDevices is not null ####"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 191
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->enableNative()V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    .line 192
    monitor-exit p0

    return-void

    .line 186
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onHidConnected(Ljava/lang/String;I)V
    .registers 10
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v3, "BluetoothHIDService"

    .line 555
    monitor-enter p0

    :try_start_3
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onHidConnected: status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v3, :cond_29

    .line 558
    const-string v3, "BluetoothHIDService"

    const-string v4, "#### onHidConnected: mDevices = null ####"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_76

    .line 592
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    .line 562
    :cond_29
    :try_start_29
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 563
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_47

    .line 564
    const-string v3, "BluetoothHIDService"

    const-string/jumbo v4, "onHidConnected: device = null, must be incoming connection."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 566
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_47
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 571
    .local v2, state:I
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onHidConnected: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-nez p2, :cond_79

    .line 574
    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 575
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_27

    .line 576
    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_75
    .catchall {:try_start_29 .. :try_end_75} :catchall_76

    goto :goto_27

    .line 555
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :catchall_76
    move-exception v3

    monitor-exit p0

    throw v3

    .line 579
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #state:I
    :cond_79
    and-int/lit16 v3, p2, 0xff

    const/16 v4, 0x21

    if-ne v3, v4, :cond_95

    .line 580
    const/4 v3, 0x0

    :try_start_80
    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 582
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    shr-int/lit8 v5, p2, 0x8

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 583
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_27

    .line 585
    .end local v1           #msg:Landroid/os/Message;
    :cond_95
    const/16 v3, 0x22

    if-ne p2, v3, :cond_a1

    .line 586
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 587
    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_27

    .line 590
    :cond_a1
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_a5
    .catchall {:try_start_80 .. :try_end_a5} :catchall_76

    goto :goto_27
.end method

.method private declared-synchronized onHidDisabled(I)V
    .registers 5
    .parameter "status"

    .prologue
    const-string v0, "BluetoothHIDService"

    .line 546
    monitor-enter p0

    :try_start_3
    const-string v0, "BluetoothHIDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHidDisabled: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-eqz p1, :cond_36

    .line 549
    const-string v0, "BluetoothHIDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops, failed to disable HID profile. status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_38

    .line 551
    :cond_36
    monitor-exit p0

    return-void

    .line 546
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onHidDisconnected(Ljava/lang/String;I)V
    .registers 8
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 596
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHidDisconnected: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_29

    .line 599
    const-string v2, "BluetoothHIDService"

    const-string v3, "#### onHidDisconnected: mDevices = null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_38

    .line 616
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    .line 603
    :cond_29
    :try_start_29
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 604
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_3b

    .line 605
    const-string v2, "BluetoothHIDService"

    const-string/jumbo v3, "onHidDisconnected: device = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_38

    goto :goto_27

    .line 596
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2

    .line 609
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3b
    :try_start_3b
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 611
    .local v1, state:I
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHidDisconnected: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    if-nez p2, :cond_27

    .line 614
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_5e
    .catchall {:try_start_3b .. :try_end_5e} :catchall_38

    goto :goto_27
.end method

.method private declared-synchronized onHidEnabled(I)V
    .registers 16
    .parameter "status"

    .prologue
    const-string v11, "BluetoothHIDService"

    .line 501
    monitor-enter p0

    :try_start_3
    const-string v11, "BluetoothHIDService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onHidEnabled: status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    if-eqz p1, :cond_38

    .line 504
    const-string v11, "BluetoothHIDService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Oops, failed to enable HID profile. status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_48

    .line 543
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 508
    :cond_38
    :try_start_38
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v11}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_4b

    .line 509
    const-string v11, "BluetoothHIDService"

    const-string v12, "Oops, onHidEnabled but BT is disabled."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_48

    goto :goto_36

    .line 501
    :catchall_48
    move-exception v11

    monitor-exit p0

    throw v11

    .line 513
    :cond_4b
    :try_start_4b
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v11}, Landroid/server/BluetoothService;->listHidInfo()Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, hidList:Ljava/lang/String;
    if-eqz v8, :cond_36

    .line 518
    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, addresses:[Ljava/lang/String;
    if-nez v1, :cond_63

    .line 520
    const-string v11, "BluetoothHIDService"

    const-string v12, "addresses = null"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 524
    :cond_63
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_66
    if-ge v9, v10, :cond_36

    aget-object v0, v2, v9

    .line 525
    .local v0, address:Ljava/lang/String;
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v11, v0}, Landroid/server/BluetoothService;->getHidInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 526
    .local v7, hidInfo:Ljava/lang/String;
    if-eqz v7, :cond_b5

    .line 527
    invoke-direct {p0, v0, v7}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 530
    .local v5, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v5, :cond_b5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_b5

    .line 531
    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8a
    .catchall {:try_start_4b .. :try_end_8a} :catchall_48

    move-result-object v4

    .line 532
    .local v4, attrMaskStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 534
    .local v3, attrMask:I
    const/16 v11, 0x10

    :try_start_8e
    invoke-static {v4, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 535
    const-string v11, "BluetoothHIDService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hidInfo.attrMask = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    or-int/lit8 v12, v3, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catchall {:try_start_8e .. :try_end_b5} :catchall_48
    .catch Ljava/lang/NumberFormatException; {:try_start_8e .. :try_end_b5} :catch_b8

    .line 524
    .end local v3           #attrMask:I
    .end local v4           #attrMaskStr:Ljava/lang/String;
    .end local v5           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_b5
    :goto_b5
    add-int/lit8 v9, v9, 0x1

    goto :goto_66

    .line 537
    .restart local v3       #attrMask:I
    .restart local v4       #attrMaskStr:Ljava/lang/String;
    .restart local v5       #device:Landroid/bluetooth/BluetoothDevice;
    :catch_b8
    move-exception v11

    move-object v6, v11

    .line 538
    .local v6, e:Ljava/lang/NumberFormatException;
    :try_start_ba
    const-string v11, "BluetoothHIDService"

    const-string v12, ""

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_48

    goto :goto_b5
.end method

.method private declared-synchronized onHidInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .parameter "address"
    .parameter "info"
    .parameter "attrMask"

    .prologue
    const/4 v6, 0x3

    const-string v3, "BluetoothHIDService"

    .line 647
    monitor-enter p0

    :try_start_4
    const-string v3, "BluetoothHIDService"

    const-string/jumbo v4, "onHidInfo()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v3, :cond_19

    .line 650
    const-string v3, "BluetoothHIDService"

    const-string v4, "#### onHidInfo: mDevices = null ####"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_28

    .line 678
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 654
    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 655
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2b

    .line 656
    const-string v3, "BluetoothHIDService"

    const-string/jumbo v4, "onHidInfo: device = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_28

    goto :goto_17

    .line 647
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_28
    move-exception v3

    monitor-exit p0

    throw v3

    .line 660
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2b
    if-eqz p2, :cond_36

    .line 661
    :try_start_2d
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1, p2}, Landroid/server/BluetoothService;->addHidInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, v0, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setAttrMask(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_17

    .line 665
    :cond_36
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 666
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 668
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 670
    .local v2, state:I
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onHidInfo: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    if-eq v2, v6, :cond_17

    if-eqz v2, :cond_17

    .line 674
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 675
    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_6c
    .catchall {:try_start_2d .. :try_end_6c} :catchall_28

    goto :goto_17
.end method

.method private declared-synchronized onHidVup(Ljava/lang/String;I)V
    .registers 8
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 620
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHidVup: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_29

    .line 623
    const-string v2, "BluetoothHIDService"

    const-string v3, "#### onHidVup: mDevices = null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_38

    .line 643
    :goto_27
    monitor-exit p0

    return-void

    .line 627
    :cond_29
    :try_start_29
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 628
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_3b

    .line 629
    const-string v2, "BluetoothHIDService"

    const-string/jumbo v3, "onHidVup: device = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_38

    goto :goto_27

    .line 620
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2

    .line 633
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3b
    :try_start_3b
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 635
    .local v1, state:I
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHidVup: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    if-nez p2, :cond_5e

    .line 638
    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 642
    :cond_5e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z
    :try_end_61
    .catchall {:try_start_3b .. :try_end_61} :catchall_38

    goto :goto_27
.end method

.method private native sendDataNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private declared-synchronized setAttrMask(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8
    .parameter "device"
    .parameter "attrMask"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 469
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAttrMask: attrMask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_2a

    .line 472
    const-string v2, "BluetoothHIDService"

    const-string/jumbo v3, "setAttrMask() but mDevices is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_47

    .line 483
    :goto_28
    monitor-exit p0

    return-void

    .line 476
    :cond_2a
    move v0, p2

    .line 477
    .local v0, intValue:I
    :try_start_2b
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 478
    .local v1, value:Ljava/lang/Integer;
    if-eqz v1, :cond_3d

    .line 479
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 482
    :cond_3d
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_47

    goto :goto_28

    .line 469
    .end local v0           #intValue:I
    .end local v1           #value:Ljava/lang/Integer;
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native setProtocolModeNative(Ljava/lang/String;B)V
.end method

.method private native setReportNative(Ljava/lang/String;BLjava/lang/String;)V
.end method

.method private setState(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 10
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    .line 428
    if-ne p3, p2, :cond_3

    .line 453
    :goto_2
    return-void

    .line 433
    :cond_3
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setState: state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v3, 0x4

    if-eq p3, v3, :cond_60

    .line 437
    shl-int/lit8 v0, p3, 0x10

    .line 442
    .local v0, intValue:I
    :goto_2b
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 443
    .local v2, value:Ljava/lang/Integer;
    if-eqz v2, :cond_3e

    .line 444
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 447
    :cond_3e
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 451
    const-string v3, "com.broadcom.bt.service.hid.extra.STATE"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    .line 440
    .end local v0           #intValue:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #value:Ljava/lang/Integer;
    :cond_60
    const/4 v0, 0x0

    .restart local v0       #intValue:I
    goto :goto_2b
.end method

.method private native virtualUnplugHidNative(Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "BluetoothHIDService"

    const-string v1, "connect()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    .line 300
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 295
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 337
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "BluetoothHIDService"

    const-string v3, "disconnect()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_24

    .line 343
    const-string v2, "BluetoothHIDService"

    const-string v3, "Oops, disconnect device... but BT is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_30

    .line 367
    :goto_22
    monitor-exit p0

    return-void

    .line 346
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_33

    .line 348
    const-string v2, "BluetoothHIDService"

    const-string v3, "#### disconnect device... but mDevices is null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_30

    goto :goto_22

    .line 337
    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2

    .line 351
    :cond_33
    :try_start_33
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 352
    const-string v2, "BluetoothHIDService"

    const-string v3, "disconnect: no such HID device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 356
    :cond_43
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 357
    .local v1, state:I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, address:Ljava/lang/String;
    packed-switch v1, :pswitch_data_70

    .line 365
    :pswitch_4e
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_22

    .line 361
    :pswitch_56
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect: no action, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_33 .. :try_end_6e} :catchall_30

    goto :goto_22

    .line 358
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_56
        :pswitch_4e
        :pswitch_4e
        :pswitch_56
    .end packed-switch
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->cleanupNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 181
    invoke-super {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->finalize()V

    .line 183
    return-void

    .line 181
    :catchall_7
    move-exception v0

    invoke-super {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getAttrMask(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 456
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1e

    if-nez v1, :cond_9

    move v1, v2

    .line 464
    :goto_7
    monitor-exit p0

    return v1

    .line 460
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 461
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_15

    move v1, v2

    .line 462
    goto :goto_7

    .line 464
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1e

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    goto :goto_7

    .line 456
    .end local v0           #value:Ljava/lang/Integer;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;
    .registers 7

    .prologue
    .line 486
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 489
    .local v1, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 490
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 491
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    .line 492
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3c

    goto :goto_25

    .line 486
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_3c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 497
    .restart local v1       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3f
    :try_start_3f
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/bluetooth/BluetoothDevice;
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_3c

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    move-result v0

    monitor-exit p0

    return v0

    .line 403
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .parameter "device"

    .prologue
    .line 693
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getProtocolModeNative(Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 6
    .parameter "device"
    .parameter "reportType"
    .parameter "reportId"
    .parameter "bufferSize"

    .prologue
    .line 707
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getReportNative(Ljava/lang/String;BBI)V

    .line 708
    return-void
.end method

.method public declared-synchronized getState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 416
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1c

    if-nez v1, :cond_9

    move v1, v2

    .line 424
    :goto_7
    monitor-exit p0

    return v1

    .line 420
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 421
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_15

    move v1, v2

    .line 422
    goto :goto_7

    .line 424
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    goto :goto_7

    .line 416
    .end local v0           #value:Ljava/lang/Integer;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .registers 4
    .parameter "device"
    .parameter "cData"

    .prologue
    .line 721
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->sendDataNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method public declared-synchronized setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 410
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    move-result v0

    monitor-exit p0

    return v0

    .line 410
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 4
    .parameter "device"
    .parameter "protocolMode"

    .prologue
    .line 700
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setProtocolModeNative(Ljava/lang/String;B)V

    .line 701
    return-void
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)V
    .registers 5
    .parameter "device"
    .parameter "reportType"
    .parameter "cData"

    .prologue
    .line 714
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setReportNative(Ljava/lang/String;BLjava/lang/String;)V

    .line 715
    return-void
.end method

.method public declared-synchronized virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 370
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v2, "BluetoothHIDService"

    const-string/jumbo v3, "virtualUnplug()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_25

    .line 376
    const-string v2, "BluetoothHIDService"

    const-string v3, "Oops, virtualUnplug device... but BT is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_31

    .line 400
    :goto_23
    monitor-exit p0

    return-void

    .line 379
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_34

    .line 381
    const-string v2, "BluetoothHIDService"

    const-string v3, "#### virtualUnplug device... but mDevices is null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_31

    goto :goto_23

    .line 370
    :catchall_31
    move-exception v2

    monitor-exit p0

    throw v2

    .line 384
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 385
    const-string v2, "BluetoothHIDService"

    const-string/jumbo v3, "virtualUnplug: no such HID device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 389
    :cond_45
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 390
    .local v1, state:I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, address:Ljava/lang/String;
    packed-switch v1, :pswitch_data_72

    .line 398
    :pswitch_50
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->virtualUnplugHidNative(Ljava/lang/String;)V

    .line 399
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_23

    .line 394
    :pswitch_58
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "virtualUnplug: no action, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_34 .. :try_end_71} :catchall_31

    goto :goto_23

    .line 391
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_58
        :pswitch_50
        :pswitch_50
        :pswitch_58
    .end packed-switch
.end method
