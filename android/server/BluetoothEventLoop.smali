.class Landroid/server/BluetoothEventLoop;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothEventLoop$1;,
        Landroid/server/BluetoothEventLoop$EventLoopHandler;,
        Landroid/server/BluetoothEventLoop$EventLooperThread;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CREATE_DEVICE_ALREADY_EXISTS:I = 0x1

.field private static final CREATE_DEVICE_FAILED:I = -0x1

.field private static final CREATE_DEVICE_SUCCESS:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_AGENT_CANCEL:I = 0x3

.field private static final EVENT_ON_DEVICE_CREATED:I = 0x67

.field private static final EVENT_ON_DEVICE_FOUND:I = 0x64

.field private static final EVENT_ON_DEVICE_PROPERTY_CHANGED:I = 0x66

.field private static final EVENT_ON_DEVICE_REMOVED:I = 0x68

.field private static final EVENT_ON_PROPERTY_CHANGED:I = 0x65

.field private static final EVENT_PAIRING_CONSENT_DELAYED_ACCEPT:I = 0x2

.field private static final EVENT_RESTART_BLUETOOTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothEventLoop"


# instance fields
.field private final OPP_STANDALONE_EVENT_LOOP:Z

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAuthorizationAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

.field private mInterrupted:Z

.field private mLooper:Landroid/server/BluetoothEventLoop$EventLooperThread;

.field private mNativeData:I

.field private final mPasskeyAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 154
    invoke-static {}, Landroid/server/BluetoothEventLoop;->classInitNative()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;)V
    .registers 6
    .parameter "context"
    .parameter "adapter"
    .parameter "bluetoothService"

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isStandaloneProcess()Z

    move-result v0

    iput-boolean v0, p0, Landroid/server/BluetoothEventLoop;->OPP_STANDALONE_EVENT_LOOP:Z

    .line 160
    iput-object p3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    .line 161
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    .line 164
    iput-object p2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 166
    new-instance v0, Landroid/server/BluetoothEventLoop$EventLooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/server/BluetoothEventLoop$EventLooperThread;-><init>(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$1;)V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mLooper:Landroid/server/BluetoothEventLoop$EventLooperThread;

    .line 167
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mLooper:Landroid/server/BluetoothEventLoop$EventLooperThread;

    invoke-virtual {v0}, Landroid/server/BluetoothEventLoop$EventLooperThread;->start()V

    .line 169
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->initializeNativeDataNative()V

    .line 170
    return-void
.end method

.method static synthetic access$002(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$EventLoopHandler;)Landroid/server/BluetoothEventLoop$EventLoopHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    return-object p1
.end method

.method static synthetic access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothEventLoop;[Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processPropertyChangedEvent([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->processDevicePropertyChangedEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processDeviceCreatedEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processDeviceRemovedEvent(Ljava/lang/String;)V

    return-void
.end method

.method private addDevice(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 208
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1, p2}, Landroid/server/BluetoothService;->addRemoteDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V

    .line 209
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "RSSI"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, rssi:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "Class"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, classValue:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "Name"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, name:Ljava/lang/String;
    if-eqz v3, :cond_60

    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-short v4, v5

    .line 220
    .local v4, rssiValue:S
    :goto_28
    if-eqz v0, :cond_63

    .line 221
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    const-string v5, "android.bluetooth.device.extra.CLASS"

    new-instance v6, Landroid/bluetooth/BluetoothClass;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    const-string v5, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 226
    const-string v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 233
    .end local v1           #intent:Landroid/content/Intent;
    :goto_5f
    return-void

    .line 218
    .end local v4           #rssiValue:S
    :cond_60
    const/16 v4, -0x8000

    .restart local v4       #rssiValue:S
    goto :goto_28

    .line 231
    :cond_63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for remote device is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto :goto_5f
.end method

.method private checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    const/4 v3, 0x0

    .line 688
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 690
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Unable to get device address in checkPairingRequestAndGetAddress, returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 709
    :goto_11
    return-object v1

    .line 694
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 695
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_31

    .line 699
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-object v1, v3

    .line 700
    goto :goto_11

    .line 707
    :cond_31
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_42

    .line 708
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    :cond_42
    move-object v1, v0

    .line 709
    goto :goto_11
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private isOtherSinkInNonDisconnectingState(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    .line 973
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 974
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getNonDisconnectedSinks()Ljava/util/Set;

    move-result-object v2

    .line 975
    .local v2, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_14

    move v4, v5

    .line 979
    :goto_13
    return v4

    .line 976
    :cond_14
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 977
    .local v1, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    goto :goto_13

    .end local v1           #dev:Landroid/bluetooth/BluetoothDevice;
    :cond_30
    move v4, v5

    .line 979
    goto :goto_13
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1073
    const-string v0, "BluetoothEventLoop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return-void
.end method

.method private onAgConnectionStatusUpdate(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "result"

    .prologue
    .line 256
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAgConnectionStatusUpdate(): Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.AG_CONNECTION_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    const-string v1, "android.bluetooth.device.extra.AG_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private onAgentAuthorize(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 15
    .parameter "objectPath"
    .parameter "deviceUuid"
    .parameter "temporaryKey"
    .parameter "nativeData"

    .prologue
    .line 831
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, address:Ljava/lang/String;
    if-nez v1, :cond_10

    .line 833
    const-string v7, "BluetoothEventLoop"

    const-string v8, "Unable to get device address in onAuthAgentAuthorize"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_f
    :goto_f
    return-void

    .line 842
    :cond_10
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_3e

    .line 844
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rejecting incoming "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " connection from device as BT is not enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v8, v9}, Landroid/server/BluetoothService;->authorizeService(Ljava/lang/String;ZZ)Z

    goto :goto_f

    .line 849
    :cond_3e
    const/4 v2, 0x0

    .line 853
    .local v2, authorized:Z
    const-string/jumbo v7, "sap_weak_linkkey"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 854
    sget-object v6, Landroid/bluetooth/BluetoothUuid;->SIM_ACC:Landroid/os/ParcelUuid;

    .line 859
    .local v6, uuid:Landroid/os/ParcelUuid;
    :goto_4a
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 860
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 861
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_79

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_79

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_79

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAudioSink(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_ea

    :cond_79
    invoke-direct {p0, v1}, Landroid/server/BluetoothEventLoop;->isOtherSinkInNonDisconnectingState(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_ea

    .line 876
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    if-lez v7, :cond_db

    const/4 v7, 0x1

    move v2, v7

    .line 877
    :goto_87
    if-eqz v2, :cond_e2

    .line 879
    const-string v7, "BluetoothEventLoop"

    const-string v8, "First check pass for incoming A2DP / AVRCP connection from device"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_de

    .line 886
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v1}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;)Z

    .line 894
    :goto_9b
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onAgentAuthorize("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for A2dp service"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    if-nez v2, :cond_f

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_f

    .line 856
    .end local v0           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #uuid:Landroid/os/ParcelUuid;
    :cond_d5
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    .restart local v6       #uuid:Landroid/os/ParcelUuid;
    goto/16 :goto_4a

    .line 876
    .restart local v0       #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .restart local v3       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_db
    const/4 v7, 0x0

    move v2, v7

    goto :goto_87

    .line 888
    :cond_de
    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_9b

    .line 892
    :cond_e2
    const-string v7, "BluetoothEventLoop"

    const-string v8, "Rejecting incoming A2DP / AVRCP connection from device"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 907
    :cond_ea
    const/4 v2, 0x1

    .line 911
    const-string/jumbo v7, "sap_weak_linkkey"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_145

    .line 912
    const-string/jumbo v5, "sap_weak_linkkey"

    .line 938
    .local v5, service:Ljava/lang/String;
    :goto_f7
    if-eqz v2, :cond_1b3

    .line 939
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onAgentAuthorize("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") = true for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v4, Landroid/content/Intent;

    const-string v7, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 942
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 943
    const-string v7, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    const-string v7, "broadcom.android.bluetooth.intent.TEMPORARY_KEY"

    invoke-virtual {v4, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 945
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 913
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #service:Ljava/lang/String;
    :cond_145
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isPbap(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_14f

    .line 914
    const-string/jumbo v5, "service_pbap"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_f7

    .line 915
    .end local v5           #service:Ljava/lang/String;
    :cond_14f
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isOpp(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_159

    .line 916
    const-string/jumbo v5, "service_opp"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_f7

    .line 917
    .end local v5           #service:Ljava/lang/String;
    :cond_159
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isFtp(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_163

    .line 918
    const-string/jumbo v5, "service_ftp"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_f7

    .line 919
    .end local v5           #service:Ljava/lang/String;
    :cond_163
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isHid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_16d

    .line 920
    const-string/jumbo v5, "service_hid"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_f7

    .line 921
    .end local v5           #service:Ljava/lang/String;
    :cond_16d
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isSerialPort(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_177

    .line 922
    const-string/jumbo v5, "service_spp"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_f7

    .line 923
    .end local v5           #service:Ljava/lang/String;
    :cond_177
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isDUN(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_182

    .line 924
    const-string/jumbo v5, "service_dun"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_f7

    .line 925
    .end local v5           #service:Ljava/lang/String;
    :cond_182
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isSAP(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_18d

    .line 926
    const-string/jumbo v5, "service_sap"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_f7

    .line 927
    .end local v5           #service:Ljava/lang/String;
    :cond_18d
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isMAP(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_198

    .line 928
    const-string/jumbo v5, "service_map"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_f7

    .line 929
    .end local v5           #service:Ljava/lang/String;
    :cond_198
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isMSE(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_1a3

    .line 930
    const-string/jumbo v5, "service_mse"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_f7

    .line 931
    .end local v5           #service:Ljava/lang/String;
    :cond_1a3
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isMNS(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_1ae

    .line 932
    const-string/jumbo v5, "service_mns"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_f7

    .line 934
    .end local v5           #service:Ljava/lang/String;
    :cond_1ae
    const-string v5, ""

    .line 935
    .restart local v5       #service:Ljava/lang/String;
    const/4 v2, 0x0

    goto/16 :goto_f7

    .line 949
    :cond_1b3
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rejecting incoming "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " connection from device for unknown service"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v8, v9}, Landroid/server/BluetoothService;->authorizeService(Ljava/lang/String;ZZ)Z

    goto/16 :goto_f
.end method

.method private onAgentCancel()V
    .registers 6

    .prologue
    .line 986
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 987
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 992
    return-void
.end method

.method private onAgentOutOfBandDataAvailable(Ljava/lang/String;)Z
    .registers 6
    .parameter "objectPath"

    .prologue
    const/4 v3, 0x0

    .line 959
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v3

    .line 968
    :goto_a
    return v1

    .line 961
    :cond_b
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_15

    move v1, v3

    goto :goto_a

    .line 964
    :cond_15
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 966
    const/4 v1, 0x1

    goto :goto_a

    :cond_25
    move v1, v3

    .line 968
    goto :goto_a
.end method

.method private onCreateDeviceResult(Ljava/lang/String;I)V
    .registers 6
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of onCreateDeviceResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1010
    packed-switch p2, :pswitch_data_3c

    .line 1026
    :goto_19
    :pswitch_19
    return-void

    .line 1012
    :pswitch_1a
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 1014
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_19

    .line 1017
    :cond_2a
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Device exists, but we dont have the bluez path, failing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .end local v0           #path:Ljava/lang/String;
    :pswitch_31
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 1021
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_19

    .line 1010
    :pswitch_data_3c
    .packed-switch -0x1
        :pswitch_31
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method private onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .registers 4
    .parameter "address"
    .parameter "result"

    .prologue
    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 292
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->onCreatePairedDeviceResult(Ljava/lang/String;I)V

    .line 293
    return-void
.end method

.method private onDeviceCreated(Ljava/lang/String;)V
    .registers 6
    .parameter "deviceObjectPath"

    .prologue
    .line 308
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 309
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 311
    .local v1, postResult:Z
    if-nez v1, :cond_1a

    .line 312
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceCreated() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1a
    return-void
.end method

.method private onDeviceDisappeared(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private onDeviceDisconnectRequested(Ljava/lang/String;)V
    .registers 6
    .parameter "deviceObjectPath"

    .prologue
    .line 280
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 282
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceDisconnectRequested: Address of the remote device in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_10
    return-void

    .line 285
    :cond_11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 287
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private onDeviceFound(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .parameter "address"
    .parameter "properties"

    .prologue
    const-string v4, "BluetoothEventLoop"

    .line 236
    if-nez p2, :cond_c

    .line 237
    const-string v2, "BluetoothEventLoop"

    const-string v2, "ERROR: Remote device properties are null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_b
    :goto_b
    return-void

    .line 244
    :cond_c
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 247
    .local v1, postResult:Z
    if-nez v1, :cond_b

    .line 248
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v2, "onDeviceFound() unable to post message to handler!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private onDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    .line 581
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 582
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 583
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 584
    .local v1, postResult:Z
    if-nez v1, :cond_23

    .line 585
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDevicePropertyChanged(): unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_23
    return-void
.end method

.method private onDeviceRemoved(Ljava/lang/String;)V
    .registers 6
    .parameter "deviceObjectPath"

    .prologue
    .line 341
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 342
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 344
    .local v1, postResult:Z
    if-nez v1, :cond_1a

    .line 345
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceRemoved() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1a
    return-void
.end method

.method private onDiscoverServicesResult(Ljava/lang/String;Z)V
    .registers 3
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 1005
    return-void
.end method

.method private onDisplayPasskey(Ljava/lang/String;II)V
    .registers 8
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 805
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 814
    :goto_6
    return-void

    .line 808
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 810
    const-string v2, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 813
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRemoteDiInfoReceived(Ljava/lang/String;II)V
    .registers 8
    .parameter "remoteAddress"
    .parameter "recNum"
    .parameter "status"

    .prologue
    .line 1031
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteDiInfoReceived("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.DI_REMOTE_DI_INFO_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.DI_REMOTE_ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    const-string v1, "android.bluetooth.adapter.extra.DI_REC_NUM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1036
    const-string v1, "android.bluetooth.adapter.extra.DI_STATUS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method private onRemoteDiRecordReceived(IIZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "handle"
    .parameter "status"
    .parameter "primaryRecord"
    .parameter "specId"
    .parameter "vendorId"
    .parameter "vendorIdSource"
    .parameter "productId"
    .parameter "version"
    .parameter "clientExecutableUrl"
    .parameter "serviceDescription"
    .parameter "documentationUrl"

    .prologue
    .line 1043
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteDiRecordReceived("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "])"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.DI_REMOTE_DI_RECORD_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.DI_HANDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    const-string v1, "android.bluetooth.adapter.extra.DI_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1051
    const-string v1, "android.bluetooth.adapter.extra.DI_PRIMARY_RECORD"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1052
    const-string v1, "android.bluetooth.adapter.extra.DI_SPEC_ID"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    const-string v1, "android.bluetooth.adapter.extra.DI_VENDOR_ID"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1054
    const-string v1, "android.bluetooth.adapter.extra.DI_VENDOR_ID_SOURCE"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1055
    const-string v1, "android.bluetooth.adapter.extra.DI_PRODUCT_ID"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    const-string v1, "android.bluetooth.adapter.extra.DI_VERSION"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1057
    const-string v1, "android.bluetooth.adapter.extra.DI_CLIENT_EXECUTABLE_URL"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    const-string v1, "android.bluetooth.adapter.extra.DI_SERVICE_DESCRIPTION"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    const-string v1, "android.bluetooth.adapter.extra.DI_DOCUMENTATION_URL"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method private onRequestOobData(Ljava/lang/String;I)V
    .registers 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 817
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 825
    :goto_6
    return-void

    .line 820
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 822
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRequestPairingConsent(Ljava/lang/String;I)V
    .registers 9
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 713
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 734
    :goto_6
    return-void

    .line 722
    :cond_7
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_22

    .line 723
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 724
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 725
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    .line 729
    .end local v2           #message:Landroid/os/Message;
    :cond_22
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 731
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 733
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRequestPasskey(Ljava/lang/String;I)V
    .registers 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 761
    :goto_6
    return-void

    .line 754
    :cond_7
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    .line 756
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 758
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRequestPasskeyConfirmation(Ljava/lang/String;II)V
    .registers 8
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 738
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 747
    :goto_6
    return-void

    .line 741
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 743
    const-string v2, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRequestPinCode(Ljava/lang/String;I)V
    .registers 10
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 765
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 801
    :goto_6
    return-void

    .line 768
    :cond_7
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, pendingOutgoingAddress:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    .line 773
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 777
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 778
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getDockPin()Ljava/lang/String;

    move-result-object v4

    .line 779
    .local v4, pin:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_6

    .line 783
    .end local v4           #pin:Ljava/lang/String;
    :cond_30
    new-instance v1, Landroid/bluetooth/BluetoothClass;

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 786
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_6c

    .line 797
    .end local v1           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_42
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 799
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    .line 794
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #btClass:Landroid/bluetooth/BluetoothClass;
    :sswitch_62
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->attemptAutoPair(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    goto :goto_6

    .line 786
    nop

    :sswitch_data_6c
    .sparse-switch
        0x404 -> :sswitch_62
        0x408 -> :sswitch_62
        0x418 -> :sswitch_62
        0x41c -> :sswitch_62
        0x420 -> :sswitch_62
        0x428 -> :sswitch_62
        0x580 -> :sswitch_62
    .end sparse-switch
.end method

.method private onRestartRequired()V
    .registers 3

    .prologue
    .line 1065
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1066
    const-string v0, "BluetoothEventLoop"

    const-string v1, "*** A serious error occurred (did bluetoothd crash?) - restarting Bluetooth ***"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendEmptyMessage(I)Z

    .line 1070
    :cond_15
    return-void
.end method

.method private onSlcUpForAgConnection(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 265
    const-string v1, "BluetoothEventLoop"

    const-string/jumbo v2, "onAgSlcUp()..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.STATE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private processDeviceCreatedEvent(Ljava/lang/String;)V
    .registers 5
    .parameter "deviceObjectPath"

    .prologue
    .line 319
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, address:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 322
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, properties:[Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 324
    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    .line 327
    .end local v1           #properties:[Ljava/lang/String;
    :cond_19
    return-void
.end method

.method private processDevicePropertyChangedEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    .line 592
    const/4 v9, 0x0

    aget-object v6, p2, v9

    .line 593
    .local v6, name:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_14

    .line 595
    const-string v9, "BluetoothEventLoop"

    const-string/jumbo v10, "onDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_13
    :goto_13
    return-void

    .line 600
    :cond_14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device property property:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 602
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 603
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v9, "Name"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 604
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 607
    const-string v9, "android.bluetooth.device.extra.NAME"

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_13

    .line 609
    .end local v4           #intent:Landroid/content/Intent;
    :cond_5c
    const-string v9, "Class"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 610
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 613
    const-string v9, "android.bluetooth.device.extra.CLASS"

    new-instance v10, Landroid/bluetooth/BluetoothClass;

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 615
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 616
    .end local v4           #intent:Landroid/content/Intent;
    :cond_96
    const-string v9, "Connected"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_df

    .line 617
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/4 v4, 0x0

    .line 619
    .restart local v4       #intent:Landroid/content/Intent;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 620
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c9

    .line 624
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0x1f40

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setLinkTimeout(Ljava/lang/String;I)V

    .line 629
    :cond_c9
    :goto_c9
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 630
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 627
    :cond_d7
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_c9

    .line 631
    .end local v4           #intent:Landroid/content/Intent;
    :cond_df
    const-string v9, "Disconnected"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11b

    .line 632
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 634
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string v10, "8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_114

    .line 635
    const-string v9, "android.bluetooth.device.extra.OUT_RANGE"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    :goto_104
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "false"

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 638
    :cond_114
    const-string v9, "android.bluetooth.device.extra.OUT_RANGE"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_104

    .line 642
    .end local v4           #intent:Landroid/content/Intent;
    :cond_11b
    const-string v9, "UUIDs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15c

    .line 643
    const/4 v8, 0x0

    .line 644
    .local v8, uuid:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 645
    .local v5, len:I
    if-lez v5, :cond_14b

    .line 646
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .local v7, str:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    .local v3, i:I
    :goto_137
    array-length v9, p2

    if-ge v3, v9, :cond_147

    .line 648
    aget-object v9, p2, v3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    add-int/lit8 v3, v3, 0x1

    goto :goto_137

    .line 651
    :cond_147
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 653
    .end local v3           #i:I
    .end local v7           #str:Ljava/lang/StringBuilder;
    :cond_14b
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0, v6, v8}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 658
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 659
    .end local v5           #len:I
    .end local v8           #uuid:Ljava/lang/String;
    :cond_15c
    const-string v9, "Paired"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_193

    .line 660
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_181

    .line 664
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_13

    .line 665
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xc

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_13

    .line 668
    :cond_181
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xa

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 669
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Trusted"

    const-string v11, "false"

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 671
    :cond_193
    const-string v9, "Trusted"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1bf

    .line 673
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set trust state succeded, value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 674
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 675
    :cond_1bf
    const-string v9, "PairingFailed"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 677
    :try_start_1c7
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xa

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Landroid/server/BluetoothPairingFailedResult;->getPairingErrorCodeToDisplayMessage(I)I

    move-result v11

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_1d9
    .catch Ljava/lang/NumberFormatException; {:try_start_1c7 .. :try_end_1d9} :catch_1e4

    .line 682
    :goto_1d9
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Trusted"

    const-string v11, "false"

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 678
    :catch_1e4
    move-exception v9

    move-object v2, v9

    .line 679
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v9, "BluetoothEventLoop"

    const-string v10, "Invalid pairing failure code received from JNI"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xa

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto :goto_1d9
.end method

.method private processDeviceRemovedEvent(Ljava/lang/String;)V
    .registers 7
    .parameter "deviceObjectPath"

    .prologue
    .line 352
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 354
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 356
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, "UUIDs"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_1d
    return-void
.end method

.method private processPropertyChangedEvent([Ljava/lang/String;)V
    .registers 14
    .parameter "propValues"

    .prologue
    .line 438
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->isAdapterPropertiesEmpty()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 441
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->getAllProperties()V

    .line 443
    :cond_d
    const/4 v10, 0x0

    aget-object v5, p1, v10

    .line 444
    .local v5, name:Ljava/lang/String;
    const-string v10, "Name"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 445
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v5, v11}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v2, intent:Landroid/content/Intent;
    const-string v10, "android.bluetooth.adapter.extra.LOCAL_NAME"

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 502
    .end local v2           #intent:Landroid/content/Intent;
    :cond_36
    :goto_36
    return-void

    .line 449
    :cond_37
    const-string v10, "Pairable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_47

    const-string v10, "Discoverable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 450
    :cond_47
    const-string v10, "Pairable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a3

    const/4 v10, 0x1

    aget-object v10, p1, v10

    move-object v6, v10

    .line 452
    .local v6, pairable:Ljava/lang/String;
    :goto_53
    const-string v10, "Discoverable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ad

    const/4 v10, 0x1

    aget-object v10, p1, v10

    move-object v0, v10

    .line 456
    .local v0, discoverable:Ljava/lang/String;
    :goto_5f
    if-eqz v6, :cond_36

    if-eqz v0, :cond_36

    .line 459
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v5, v11}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->getScanMode()I

    move-result v7

    .line 461
    .local v7, prevMode:I
    const-string/jumbo v10, "true"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v11, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v10, v11}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v4

    .line 464
    .local v4, mode:I
    if-ltz v4, :cond_36

    .line 465
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v10, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    const-string v10, "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

    invoke-virtual {v2, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    const/high16 v10, 0x1000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_36

    .line 450
    .end local v0           #discoverable:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mode:I
    .end local v6           #pairable:Ljava/lang/String;
    .end local v7           #prevMode:I
    :cond_a3
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v11, "Pairable"

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    goto :goto_53

    .line 452
    .restart local v6       #pairable:Ljava/lang/String;
    :cond_ad
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v11, "Discoverable"

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_5f

    .line 471
    .end local v6           #pairable:Ljava/lang/String;
    :cond_b7
    const-string v10, "Discovering"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fc

    .line 473
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v5, v11}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v10, 0x1

    aget-object v10, p1, v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e9

    .line 475
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->setIsDiscovering(Z)V

    .line 476
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_e0
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 479
    .end local v2           #intent:Landroid/content/Intent;
    :cond_e9
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    .line 480
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->setIsDiscovering(Z)V

    .line 481
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_e0

    .line 484
    .end local v2           #intent:Landroid/content/Intent;
    :cond_fc
    const-string v10, "Devices"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_133

    .line 485
    const/4 v9, 0x0

    .line 486
    .local v9, value:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 487
    .local v3, len:I
    if-lez v3, :cond_12c

    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v8, str:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    .local v1, i:I
    :goto_118
    array-length v10, p1

    if-ge v1, v10, :cond_128

    .line 490
    aget-object v10, p1, v1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 493
    :cond_128
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 495
    .end local v1           #i:I
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_12c
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10, v5, v9}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 496
    .end local v3           #len:I
    .end local v9           #value:Ljava/lang/String;
    :cond_133
    const-string v10, "Powered"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 499
    const/4 v10, 0x1

    aget-object v10, p1, v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 500
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->onRestartRequired()V

    goto/16 :goto_36
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->cleanupNativeDataNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 176
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    return-void

    .line 176
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getAuthorizationAgentRequestData()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getPasskeyAgentRequestData()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method public isEventLoopRunning()Z
    .registers 2

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    return v0
.end method

.method onPropertyChanged([Ljava/lang/String;)V
    .registers 6
    .parameter "propValues"

    .prologue
    .line 427
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 428
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 430
    .local v1, postResult:Z
    if-nez v1, :cond_1a

    .line 431
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onPropertyChanged() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1a
    return-void
.end method

.method start()V
    .registers 2

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_e

    .line 191
    const-string v0, "Starting Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->startEventLoopNative()V

    .line 194
    :cond_e
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 197
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 198
    const-string v0, "Stopping Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->stopEventLoopNative()V

    .line 201
    :cond_e
    return-void
.end method
