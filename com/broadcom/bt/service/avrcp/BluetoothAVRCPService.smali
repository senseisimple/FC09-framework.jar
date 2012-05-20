.class public Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;
.super Lcom/broadcom/bt/service/framework/BaseEventLoop;
.source "BluetoothAVRCPService.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAVRCPService"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->classInitNativeAVRCP()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseEventLoop;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    .line 42
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 70
    new-instance v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 53
    iput-boolean v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    .line 54
    return-void
.end method

.method private static native classInitNativeAVRCP()V
.end method

.method private native cleanupNativeAVRCP()V
.end method

.method private native disableNativeAVRCP()V
.end method

.method private native enableNativeAVRCP()V
.end method

.method private native initNativeAVRCP()V
.end method

.method private static native onPlayStateChangedNative(Ljava/lang/String;I)V
.end method


# virtual methods
.method public declared-synchronized disable()V
    .registers 5

    .prologue
    const-string v1, "BluetoothAVRCPService"

    .line 230
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable: enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    if-eqz v1, :cond_27

    .line 233
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_32

    .line 235
    :try_start_24
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disableNativeAVRCP()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_29

    .line 240
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    .line 236
    :catch_29
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    :try_start_2a
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "disableNativeAVRCP failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_27

    .line 230
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public duration(Ljava/lang/String;)J
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 466
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 467
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 468
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->duration()J

    move-result-wide v1

    .line 470
    :goto_c
    return-wide v1

    .line 469
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public declared-synchronized enable()V
    .registers 4

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothAVRCPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enableNativeAVRCP()V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 221
    monitor-exit p0

    return-void

    .line 217
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 180
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->finish()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 183
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 184
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    const-string v1, "BluetoothAVRCPService"

    .line 168
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    if-nez v1, :cond_14

    .line 171
    :try_start_e
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->cleanupNativeAVRCP()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_16

    .line 175
    :goto_11
    const/4 v1, 0x1

    :try_start_12
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_1f

    .line 177
    :cond_14
    monitor-exit p0

    return-void

    .line 172
    :catch_16
    move-exception v0

    .line 173
    .local v0, t:Ljava/lang/Throwable;
    :try_start_17
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "Unable to cleanup AVRCP EventLoop service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_11

    .line 168
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 400
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 401
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 403
    :goto_c
    return-object v1

    .line 402
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbumName: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getArtistName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 407
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 408
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 410
    :goto_c
    return-object v1

    .line 409
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArtistName: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getAudioId(Ljava/lang/String;)J
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 452
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 453
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getAudioId()J

    move-result-wide v1

    .line 455
    :goto_c
    return-wide v1

    .line 454
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioId: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public getCurrentPlayer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getCurrentPlayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPlayer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getDefaultPlayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const-string v0, "bluetooth_avrcp"

    return-object v0
.end method

.method public getPlayers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayers()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition(Ljava/lang/String;)I
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 335
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 336
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 337
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getQueuePosition()I

    move-result v1

    .line 340
    :goto_c
    return v1

    .line 339
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQueuePosition: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not find or not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public getRepeatMode(Ljava/lang/String;)I
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 493
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 494
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 495
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getRepeatMode()I

    move-result v1

    .line 497
    :goto_c
    return v1

    .line 496
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRepeatMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public getShuffleMode(Ljava/lang/String;)I
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 486
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 487
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 488
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getShuffleMode()I

    move-result v1

    .line 490
    :goto_c
    return v1

    .line 489
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShuffleMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public getTotalTracks(Ljava/lang/String;)I
    .registers 7
    .parameter "PlayerName"

    .prologue
    .line 413
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v1

    .line 414
    .local v1, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v1, :cond_12

    .line 415
    invoke-virtual {v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getQueue()[J

    move-result-object v0

    .line 416
    .local v0, list:[J
    if-eqz v0, :cond_10

    array-length v2, v0

    .line 419
    .end local v0           #list:[J
    :goto_f
    return v2

    .line 416
    .restart local v0       #list:[J
    :cond_10
    const/4 v2, 0x0

    goto :goto_f

    .line 418
    .end local v0           #list:[J
    :cond_12
    const-string v2, "BluetoothAVRCPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalTracks: player: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not binded!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public getTrackName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 392
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 393
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 394
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 396
    :goto_c
    return-object v1

    .line 395
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrackName: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public declared-synchronized init()V
    .registers 4

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "init(): register avrcp test intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.broadcom.test.avrcp.cmd"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->initNativeAVRCP()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 69
    monitor-exit p0

    return-void

    .line 62
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isPlayerLaunched(Ljava/lang/String;)Z
    .registers 3
    .parameter "PlayerName"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->isPlayerLaunched(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 354
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 355
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->isPlaying()Z

    move-result v1

    .line 357
    :goto_c
    return v1

    .line 356
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public launchPlayer(Ljava/lang/String;I)V
    .registers 4
    .parameter "PlayerName"
    .parameter "msWait"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->launchPlayer(Ljava/lang/String;I)V

    .line 330
    return-void
.end method

.method public next(Ljava/lang/String;)V
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 386
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 387
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_c

    .line 388
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->next()V

    .line 390
    :goto_b
    return-void

    .line 389
    :cond_c
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public onConnected(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 248
    const-string v0, "BluetoothAVRCPService"

    const-string/jumbo v1, "onConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onDisconnected()V
    .registers 4

    .prologue
    .line 274
    const-string v0, "BluetoothAVRCPService"

    const-string/jumbo v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onPlayStateChanged(Ljava/lang/String;I)V
    .registers 3
    .parameter "PlayerName"
    .parameter "StateChangeType"

    .prologue
    .line 332
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChangedNative(Ljava/lang/String;I)V

    .line 333
    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 369
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_c

    .line 370
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->pause()V

    .line 372
    :goto_b
    return-void

    .line 371
    :cond_c
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public play(Ljava/lang/String;)V
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 374
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 375
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_c

    .line 376
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->play()V

    .line 378
    :goto_b
    return-void

    .line 377
    :cond_c
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public position(Ljava/lang/String;)J
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 459
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 460
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 461
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->position()J

    move-result-wide v1

    .line 463
    :goto_c
    return-wide v1

    .line 462
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public prev(Ljava/lang/String;)V
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 381
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_c

    .line 382
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->prev()V

    .line 384
    :goto_b
    return-void

    .line 383
    :cond_c
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public refreshUI(Ljava/lang/String;I)V
    .registers 7
    .parameter "PlayerName"
    .parameter "controls"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 423
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_c

    .line 424
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->refreshUI(I)V

    .line 426
    :goto_b
    return-void

    .line 425
    :cond_c
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshUI: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method declared-synchronized registerCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 196
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 198
    :cond_8
    monitor-exit p0

    return-void

    .line 195
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seek(Ljava/lang/String;J)J
    .registers 8
    .parameter "PlayerName"
    .parameter "pos"

    .prologue
    .line 473
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 474
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_d

    .line 475
    invoke-virtual {v0, p2, p3}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->seek(J)J

    move-result-wide v1

    .line 477
    :goto_c
    return-wide v1

    .line 476
    :cond_d
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seek: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public setCurrentPlayer(Ljava/lang/String;)V
    .registers 3
    .parameter "PlayerName"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->setCurrentPlayer(Ljava/lang/String;)Z

    .line 324
    return-void
.end method

.method public setQueuePosition(Ljava/lang/String;I)V
    .registers 7
    .parameter "PlayerName"
    .parameter "index"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 346
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_c

    .line 347
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setQueuePosition(I)V

    .line 350
    :goto_b
    return-void

    .line 348
    :cond_c
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setQueuePosition: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public setRepeatMode(Ljava/lang/String;I)V
    .registers 7
    .parameter "PlayerName"
    .parameter "mode"

    .prologue
    .line 501
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 502
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_c

    .line 503
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setRepeatMode(I)V

    .line 505
    :goto_b
    return-void

    .line 504
    :cond_c
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRepeatMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public setShuffleMode(Ljava/lang/String;I)V
    .registers 7
    .parameter "PlayerName"
    .parameter "shufflemode"

    .prologue
    .line 480
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 481
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_c

    .line 482
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setShuffleMode(I)V

    .line 484
    :goto_b
    return-void

    .line 483
    :cond_c
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShuffleMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothAVRCPService"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->init(Landroid/content/Context;)Z

    .line 149
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enable()V

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onStateChangeEvent(Z)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 157
    monitor-exit p0

    return-void

    .line 145
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    const-string v0, "BluetoothAVRCPService"

    .line 160
    monitor-enter p0

    :try_start_3
    const-string v0, "BluetoothAVRCPService"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "calling mPlayerMgr.clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->clear()V

    .line 163
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disable()V

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onStateChangeEvent(Z)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    .line 165
    monitor-exit p0

    return-void

    .line 160
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopPlayer(Ljava/lang/String;)V
    .registers 6
    .parameter "PlayerName"

    .prologue
    .line 361
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 362
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_c

    .line 363
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->stop()V

    .line 366
    :goto_b
    return-void

    .line 364
    :cond_c
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 208
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 210
    :cond_8
    monitor-exit p0

    return-void

    .line 207
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
