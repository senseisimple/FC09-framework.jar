.class public Lcom/broadcom/bt/service/framework/BluetoothServiceManager;
.super Ljava/lang/Object;
.source "BluetoothServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    }
.end annotation


# static fields
.field private static BT_AdapterState:Z = false

.field public static final TAG:Ljava/lang/String; = "BluetoothServiceManager"

.field private static _DBG:Z

.field private static mBtServiceMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Z

.field private static mIsFactoryTest:Z

.field private static mLastBluetoothState:I

.field private static mSystemContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    .line 65
    sput-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->BT_AdapterState:Z

    .line 67
    sput-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z

    .line 68
    const/4 v0, -0x1

    sput v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    .line 97
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method private static _registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V
    .registers 8
    .parameter "svcName"
    .parameter "svc"

    .prologue
    const-string/jumbo v5, "null"

    const-string v4, "BluetoothServiceManager"

    const-string v3, ": "

    .line 112
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    .line 113
    .local v0, isSupported:Z
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v1, :cond_6d

    .line 114
    if-nez v0, :cond_3f

    .line 115
    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Bluetooth Service not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_7f

    const-string/jumbo v2, "null"

    move-object v2, v5

    :goto_2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...Skipping. ****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3f
    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Registering Bluetooth Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_88

    const-string/jumbo v2, "null"

    move-object v2, v5

    :goto_5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_6d
    if-eqz v0, :cond_7e

    .line 123
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 124
    :try_start_72
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;-><init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V

    invoke-virtual {v2, p0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_91

    .line 127
    :cond_7e
    return-void

    .line 115
    :cond_7f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 119
    :cond_88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    .line 125
    :catchall_91
    move-exception v2

    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v2
.end method

.method private static _startService(Ljava/lang/String;)V
    .registers 7
    .parameter "svcName"

    .prologue
    const-string v5, "***"

    const-string v4, "BluetoothServiceManager"

    .line 183
    if-eqz p0, :cond_e

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 184
    :cond_e
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_35

    .line 185
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Bluetooth service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_36

    const-string/jumbo v3, "null"

    :goto_24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not enabled. Skipping start...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_35
    :goto_35
    return-void

    :cond_36
    move-object v3, p0

    .line 185
    goto :goto_24

    .line 192
    :cond_38
    const/4 v1, 0x0

    .line 193
    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 194
    :try_start_3c
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    .line 195
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_6c

    .line 197
    if-nez v1, :cond_6f

    .line 198
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_35

    .line 199
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Unable to find service record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 195
    :catchall_6c
    move-exception v2

    :try_start_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v2

    .line 204
    :cond_6f
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_a6

    .line 205
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_35

    .line 206
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not managed by BluetoothServiceManager. Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v2, 0x1

    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z

    .line 212
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_35

    .line 218
    :cond_a6
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_c8

    .line 219
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_c8
    monitor-enter v1

    .line 223
    :try_start_c9
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->init()V

    .line 224
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->start()V

    .line 226
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_c9 .. :try_end_d8} :catchall_f8

    .line 227
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Done starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 226
    :catchall_f8
    move-exception v2

    :try_start_f9
    monitor-exit v1
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw v2
.end method

.method private static _stopService(Ljava/lang/String;)V
    .registers 6
    .parameter "svcName"

    .prologue
    const-string v4, "BluetoothServiceManager"

    .line 231
    if-nez p0, :cond_5

    .line 271
    :cond_4
    :goto_4
    return-void

    .line 234
    :cond_5
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_27

    .line 235
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Stopping service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_27
    const/4 v1, 0x0

    .line 239
    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 240
    :try_start_2b
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    .line 241
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_5b

    .line 243
    if-nez v1, :cond_5e

    .line 244
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_4

    .line 245
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Unable to find service record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 241
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v2

    .line 250
    :cond_5e
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_96

    .line 251
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_4

    .line 252
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not managed by Bleutooth Service Manager. Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z

    .line 257
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 263
    :cond_96
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_b8

    .line 264
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Stop service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_b8
    monitor-enter v1

    .line 268
    :try_start_b9
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->stop()V

    .line 270
    monitor-exit v1

    goto/16 :goto_4

    :catchall_c3
    move-exception v2

    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_b9 .. :try_end_c5} :catchall_c3

    throw v2
.end method

.method public static disableService(Ljava/lang/String;)V
    .registers 6
    .parameter "svcName"

    .prologue
    const-string v3, "BluetoothServiceManager"

    .line 368
    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***disableService() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "***"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 372
    :try_start_23
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 373
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_4b

    .line 374
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***disableService() Service not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_4b
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_stopService(Ljava/lang/String;)V

    .line 380
    monitor-exit v1

    .line 381
    return-void

    .line 380
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_6d
    move-exception v2

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_23 .. :try_end_6f} :catchall_6d

    throw v2
.end method

.method public static enableService(Ljava/lang/String;)V
    .registers 6
    .parameter "svcName"

    .prologue
    const-string v3, "BluetoothServiceManager"

    .line 352
    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableService() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 356
    :try_start_1d
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 357
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_45

    .line 358
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***enableService(): Service not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_45
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_startService(Ljava/lang/String;)V

    .line 364
    monitor-exit v1

    .line 365
    return-void

    .line 364
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_67
    move-exception v2

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_1d .. :try_end_69} :catchall_67

    throw v2
.end method

.method public static declared-synchronized getLastProcessedBtState()I
    .registers 2

    .prologue
    .line 75
    const-class v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .registers 4
    .parameter "svcName"

    .prologue
    .line 396
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 397
    :try_start_3
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 398
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_10

    const/4 v2, 0x0

    :goto_e
    monitor-exit v1

    return-object v2

    :cond_10
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    goto :goto_e

    .line 399
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public static getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .registers 4
    .parameter "svcName"

    .prologue
    .line 389
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 390
    :try_start_3
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 391
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_10

    const/4 v2, 0x0

    :goto_e
    monitor-exit v1

    return-object v2

    :cond_10
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    goto :goto_e

    .line 392
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public static getServiceState(Ljava/lang/String;)I
    .registers 3
    .parameter "svcName"

    .prologue
    .line 409
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 410
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_c

    .line 411
    const/4 v1, -0x1

    .line 413
    :goto_b
    return v1

    :cond_c
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$100(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x2

    goto :goto_b

    :cond_14
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 4
    .parameter "systemContext"

    .prologue
    .line 137
    const-class v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z

    if-eqz v1, :cond_10

    .line 138
    const-string v1, "BluetoothServiceManager"

    const-string v2, "Bluetooth Service Manager already initialized.....Skipping init()..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c

    .line 150
    :goto_e
    monitor-exit v0

    return-void

    .line 142
    :cond_10
    :try_start_10
    sput-object p0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    .line 144
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->initSettings()V

    .line 147
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->registerServices()V

    .line 149
    const/4 v1, 0x1

    sput-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_1c

    goto :goto_e

    .line 137
    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static initSettings()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "bt_svcst_init"

    const-string v8, "bt_svcst_"

    const-string v7, "BluetoothServiceManager"

    .line 160
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    if-eqz v3, :cond_a2

    .line 161
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "bt_svcst_init"

    invoke-static {v0, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 164
    .local v2, settingsExist:I
    if-nez v2, :cond_a2

    .line 165
    const-string v3, "BluetoothServiceManager"

    const-string v3, "*********Initializing Bluetooth Service Settings*******"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_9d

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_9b

    move v4, v6

    :goto_4f
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    const-string v3, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: isServiceSupported=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";  SERVICES_STARTUP_ENABLED= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_9b
    move v4, v5

    .line 167
    goto :goto_4f

    .line 177
    :cond_9d
    const-string v3, "bt_svcst_init"

    invoke-static {v0, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v2           #settingsExist:I
    :cond_a2
    return-void
.end method

.method public static declared-synchronized isInitialized()Z
    .registers 2

    .prologue
    .line 71
    const-class v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onBluetoothDisabled()V
    .registers 5

    .prologue
    const/16 v4, 0xd

    const-string v3, "BluetoothServiceManager"

    .line 330
    const-string v2, "BluetoothServiceManager"

    const-string/jumbo v2, "onBluetoothDisabled()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v2, 0x0

    sput-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->BT_AdapterState:Z

    .line 334
    sget v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    if-ne v2, v4, :cond_1b

    .line 335
    const-string v2, "BluetoothServiceManager"

    const-string v2, "Already processed Bluetooth STATE_TURNING_OFF event..Skipping"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_1a
    return-void

    .line 339
    :cond_1b
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 340
    :try_start_1e
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 341
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 342
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_stopService(Ljava/lang/String;)V

    goto :goto_28

    .line 345
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_38
    move-exception v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_38

    throw v3

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3b
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    .line 347
    sput v4, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    goto :goto_1a
.end method

.method public static declared-synchronized onBluetoothEnabled()V
    .registers 6

    .prologue
    const/16 v5, 0xc

    const-string v2, "BluetoothServiceManager"

    .line 307
    const-class v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v2

    :try_start_7
    const-string v3, "BluetoothServiceManager"

    const-string/jumbo v4, "onBluetoothEnabled()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mIsFactoryTest:Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_24

    if-eqz v3, :cond_15

    .line 327
    :goto_13
    monitor-exit v2

    return-void

    .line 312
    :cond_15
    const/4 v3, 0x1

    :try_start_16
    sput-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->BT_AdapterState:Z

    .line 314
    sget v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    if-ne v3, v5, :cond_27

    .line 315
    const-string v3, "BluetoothServiceManager"

    const-string v4, "Already processed Bluetooth STATE_ON event..Skipping"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 307
    :catchall_24
    move-exception v3

    monitor-exit v2

    throw v3

    .line 319
    :cond_27
    :try_start_27
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    .line 320
    :try_start_2a
    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 321
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 322
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_startService(Ljava/lang/String;)V

    goto :goto_34

    .line 325
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_44
    move-exception v4

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_44

    :try_start_46
    throw v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_24

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_47
    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_44

    .line 326
    const/16 v3, 0xc

    :try_start_4a
    sput v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_24

    goto :goto_13
.end method

.method public static onBluetoothServiceStateChanged(Ljava/lang/String;I)V
    .registers 9
    .parameter "svcName"
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const-string v5, "BluetoothServiceManager"

    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 276
    :try_start_7
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    .line 277
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_37

    .line 279
    if-nez v1, :cond_3a

    .line 280
    sget-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v3, :cond_36

    .line 281
    const-string v3, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***onBluetoothServiceStateChanged(): Unable to find service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_36
    :goto_36
    return-void

    .line 277
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v3

    .line 287
    :cond_3a
    monitor-enter v1

    .line 288
    const/4 v3, 0x2

    if-ne v3, p1, :cond_47

    .line 289
    const/4 v3, 0x1

    :try_start_3f
    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z

    .line 303
    :cond_42
    :goto_42
    monitor-exit v1

    goto :goto_36

    :catchall_44
    move-exception v3

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw v3

    .line 290
    :cond_47
    if-ne v6, p1, :cond_42

    .line 291
    const/4 v3, 0x0

    :try_start_4a
    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_44

    .line 293
    :try_start_4d
    const-string v3, "BluetoothServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->BT_AdapterState:Z

    if-nez v3, :cond_42

    .line 295
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 296
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    invoke-interface {v3}, Lcom/broadcom/bt/service/framework/IBtService;->finish()V
    :try_end_76
    .catchall {:try_start_4d .. :try_end_76} :catchall_44
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_76} :catch_77

    goto :goto_42

    .line 299
    :catch_77
    move-exception v3

    move-object v2, v3

    .line 300
    .local v2, t:Ljava/lang/Throwable;
    :try_start_79
    const-string v3, "BluetoothServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_44

    goto :goto_42
.end method

.method private static registerServices()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string v0, "bluetooth_opp_service"

    new-instance v1, Lcom/broadcom/bt/service/opp/OppEventLoop;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/opp/OppEventLoop;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 84
    const-string v0, "bluetooth_ftp"

    new-instance v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 85
    const-string v0, "bluetooth_pbap"

    new-instance v1, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 86
    const-string v0, "bluetooth_dun"

    new-instance v1, Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 87
    const-string v0, "bluetooth_sap"

    new-instance v1, Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 88
    const-string v0, "bluetooth_test"

    new-instance v1, Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 90
    const-string v0, "bluetooth_map"

    new-instance v1, Lcom/broadcom/bt/service/map/MapEventLoop;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 91
    const-string v0, "bluetooth_bpp_service"

    invoke-static {v0, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 92
    const-string v0, "bluetooth_avrcp"

    new-instance v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 93
    const-string v0, "bluetooth_flick"

    invoke-static {v0, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 95
    return-void
.end method
