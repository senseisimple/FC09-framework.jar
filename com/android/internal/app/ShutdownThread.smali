.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown_1.png"

.field private static final PATH_SHUTDOWNSOUND:Ljava/lang/String; = "//system/media/audio/ui/PowerOff.wav"

.field private static PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String; = null

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mContext:Landroid/content/Context;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mp:Landroid/media/MediaPlayer;

.field private static sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

.field private static sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsSamsungAnimation:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    .line 89
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 90
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 91
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    .line 92
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 103
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 112
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 127
    const-string v0, "/sys/class/sec/t_key/enable_disable"

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static IsShutDownStarted()Z
    .registers 3

    .prologue
    .line 707
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    sget-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_13

    .line 709
    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "shut down already running , return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 713
    :goto_12
    return v0

    :cond_13
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_12

    .line 715
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/Semaphore;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/Semaphore;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$500()Landroid/media/MediaPlayer;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private static beginShutdownSamsungSequence(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 211
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    const/4 v3, 0x1

    :try_start_6
    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 213
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_89

    .line 217
    new-instance v1, Landroid/app/ShutdownDialog;

    invoke-direct {v1, p0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;)V

    .line 218
    .local v1, pd:Landroid/app/ShutdownDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ShutdownDialog;->setCancelable(Z)V

    .line 219
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 221
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 222
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 226
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 228
    :try_start_34
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_39} :catch_8c

    .line 232
    :goto_39
    new-instance v2, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v2}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/ShutdownDialog;->setOnAnimationEnd(Ljava/lang/Runnable;)V

    .line 240
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->show()V

    .line 244
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 245
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 246
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 247
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 249
    :try_start_63
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "Shutdown"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 251
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_7a
    .catch Ljava/lang/SecurityException; {:try_start_63 .. :try_end_7a} :catch_91

    .line 258
    :cond_7a
    :goto_7a
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v3, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v3}, Lcom/android/internal/app/ShutdownThread$3;-><init>()V

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 260
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread;->start()V

    .line 261
    return-void

    .line 213
    .end local v1           #pd:Landroid/app/ShutdownDialog;
    .restart local p0
    :catchall_89
    move-exception v3

    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v3

    .line 229
    .restart local v1       #pd:Landroid/app/ShutdownDialog;
    :catch_8c
    move-exception v2

    move-object v0, v2

    .line 230
    .local v0, e:Ljava/lang/InterruptedException;
    sput-object v6, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    goto :goto_39

    .line 252
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local p0
    :catch_91
    move-exception v2

    move-object v0, v2

    .line 253
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_7a
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v7, "ShutdownThread"

    .line 349
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    :try_start_7
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_14

    .line 351
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    monitor-exit v2

    .line 389
    .end local p0
    :goto_13
    return-void

    .line 354
    .restart local p0
    :cond_14
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 355
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_9f

    .line 359
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 360
    .local v1, pd:Landroid/app/ProgressDialog;
    const v2, 0x10401c9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    const v2, 0x10401ca

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 363
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 364
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_56

    .line 367
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 370
    :cond_56
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 373
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 374
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 375
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 376
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 378
    :try_start_78
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "Shutdown"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 380
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_8f
    .catch Ljava/lang/SecurityException; {:try_start_78 .. :try_end_8f} :catch_a2

    .line 386
    :cond_8f
    :goto_8f
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v3, Lcom/android/internal/app/ShutdownThread$6;

    invoke-direct {v3}, Lcom/android/internal/app/ShutdownThread$6;-><init>()V

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 388
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_13

    .line 355
    .end local v1           #pd:Landroid/app/ProgressDialog;
    .restart local p0
    :catchall_9f
    move-exception v3

    :try_start_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v3

    .line 381
    .end local p0
    .restart local v1       #pd:Landroid/app/ProgressDialog;
    :catch_a2
    move-exception v2

    move-object v0, v2

    .line 382
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v2, "No permission to acquire wake lock"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_8f
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 204
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 205
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 206
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 207
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .registers 7
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const-string v4, "ShutdownThread"

    .line 674
    const-string v2, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "if (reboot) <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    if-eqz p0, :cond_4b

    .line 676
    const-string v2, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :try_start_34
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_42

    .line 700
    :goto_37
    const-string v2, "ShutdownThread"

    const-string v2, "Performing low-level shutdown..."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 702
    return-void

    .line 679
    :catch_42
    move-exception v0

    .line 680
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 684
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4b
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 686
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_52
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_5d

    .line 694
    :goto_55
    const-wide/16 v2, 0x1f4

    :try_start_57
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_37

    .line 695
    :catch_5b
    move-exception v2

    goto :goto_37

    .line 687
    :catch_5d
    move-exception v0

    .line 689
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Failed to vibrate during shutdown."

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 7
    .parameter "context"
    .parameter "confirm"

    .prologue
    const-string v4, "ShutdownThread"

    .line 143
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_5
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_12

    .line 145
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit v2

    .line 192
    :goto_11
    return-void

    .line 148
    :cond_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_88

    .line 151
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 152
    new-instance v1, Ljava/io/File;

    const-string v2, "//system/media/video/shutdown/shutdown_1.png"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    .line 155
    const-string v2, "ShutdownThread"

    const-string v2, "Notifying thread to start radio shutdown"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz p1, :cond_8b

    .line 158
    const-string v2, "ShutdownThread"

    const-string v2, "########POWEROFF START WITH CONFIRM######"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10401c9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10401cb

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 176
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_84

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 181
    :cond_84
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_11

    .line 148
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #f:Ljava/io/File;
    :catchall_88
    move-exception v3

    :try_start_89
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v3

    .line 184
    .restart local v1       #f:Ljava/io/File;
    :cond_8b
    const-string v2, "ShutdownThread"

    const-string v2, "########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v2, :cond_9b

    .line 186
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    goto/16 :goto_11

    .line 188
    :cond_9b
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_11
.end method

.method public static startSoundThreadForPowerOff()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const-string v11, "//system/media/audio/ui/PowerOff.wav"

    const-string v9, "ShutdownThread"

    .line 265
    const/4 v1, 0x0

    .line 267
    .local v1, bExceptionArised:Z
    :try_start_6
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    .line 268
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const-string v8, "//system/media/audio/ui/PowerOff.wav"

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 269
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 270
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 271
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    new-instance v8, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v8}, Lcom/android/internal/app/ShutdownThread$4;-><init>()V

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2a} :catch_7d

    .line 286
    :goto_2a
    new-instance v4, Ljava/io/File;

    const-string v7, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v4, f:Ljava/io/File;
    const-string v7, "ShutdownThread"

    const-string v7, "Finding sound file : //system/media/audio/ui/PowerOff.wav"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    .line 289
    .local v2, bFileValid:Z
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 292
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string/jumbo v7, "shutdown"

    const-string v8, "1"

    invoke-virtual {v0, v7, v8}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-eqz v2, :cond_91

    if-nez v1, :cond_91

    .line 295
    const-string v7, "ShutdownThread"

    const-string v7, "Sound file found"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/app/ShutdownThread$5;

    invoke-direct {v7}, Lcom/android/internal/app/ShutdownThread$5;-><init>()V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 316
    .local v5, soundThread:Ljava/lang/Thread;
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 317
    .local v6, volume:I
    if-lez v6, :cond_7c

    .line 320
    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v10}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 322
    :try_start_70
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v7, :cond_79

    .line 323
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_79} :catch_84

    .line 334
    :cond_79
    :goto_79
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 346
    .end local v5           #soundThread:Ljava/lang/Thread;
    .end local v6           #volume:I
    :cond_7c
    :goto_7c
    return-void

    .line 280
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #bFileValid:Z
    .end local v4           #f:Ljava/io/File;
    :catch_7d
    move-exception v7

    move-object v3, v7

    .line 281
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 282
    const/4 v1, 0x1

    goto :goto_2a

    .line 325
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #bFileValid:Z
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #soundThread:Ljava/lang/Thread;
    .restart local v6       #volume:I
    :catch_84
    move-exception v7

    move-object v3, v7

    .line 326
    .local v3, e:Ljava/lang/InterruptedException;
    const/4 v7, 0x0

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 327
    const-string v7, "ShutdownThread"

    const-string v7, "Exception occurs while sAnimationSoundEndedLock.acquire()"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 338
    .end local v3           #e:Ljava/lang/InterruptedException;
    .end local v5           #soundThread:Ljava/lang/Thread;
    .end local v6           #volume:I
    :cond_91
    if-nez v2, :cond_9a

    .line 339
    const-string v7, "ShutdownThread"

    const-string v7, "Sound file not found, SoundThread is not started !"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_9a
    if-eqz v1, :cond_7c

    .line 343
    const-string v7, "ShutdownThread"

    const-string v7, "bExceptionArised is true, SoundThread is not started !"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 394
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 33

    .prologue
    .line 415
    const/16 v26, 0x0

    .line 418
    .local v26, out:Ljava/io/FileWriter;
    :try_start_2
    new-instance v27, Ljava/io/FileWriter;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_20a

    .line 419
    .end local v26           #out:Ljava/io/FileWriter;
    .local v27, out:Ljava/io/FileWriter;
    const/16 v3, 0x30

    :try_start_e
    move-object/from16 v0, v27

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_2c5

    move-object/from16 v26, v27

    .line 423
    .end local v27           #out:Ljava/io/FileWriter;
    .restart local v26       #out:Ljava/io/FileWriter;
    :goto_16
    if-eqz v26, :cond_1b

    .line 424
    :try_start_18
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileWriter;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_216

    .line 431
    :cond_1b
    :goto_1b
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v3, :cond_40

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v3, :cond_40

    .line 433
    :try_start_23
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 435
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v3, :cond_39

    .line 436
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 439
    const-string v3, "ShutdownThread"

    const-string/jumbo v4, "set LCD off"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_39
    const-string v3, "ShutdownThread"

    const-string v4, "animation end detected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_40} :catch_2c2

    .line 474
    :cond_40
    :goto_40
    new-instance v6, Lcom/android/internal/app/ShutdownThread$7;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$7;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 487
    .local v6, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_222

    const-string v4, "1"

    :goto_53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_226

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 488
    .local v29, reason:Ljava/lang/String;
    const-string/jumbo v3, "sys.shutdown.requested"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v3, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 495
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long v20, v3, v5

    .line 499
    .local v20, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 500
    :goto_9e
    :try_start_9e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_b8

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v15, v20, v4

    .line 502
    .local v15, delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-gtz v4, :cond_22a

    .line 503
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .end local v15           #delay:J
    :cond_b8
    monitor-exit v3
    :try_end_b9
    .catchall {:try_start_9e .. :try_end_b9} :catchall_239

    .line 513
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v3, "ShutdownThread"

    const-string/jumbo v4, "sys.deviceOffReq = 1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string/jumbo v3, "sys.deviceOffReq"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v12

    .line 528
    .local v12, am:Landroid/app/IActivityManager;
    if-eqz v12, :cond_e1

    .line 530
    const/16 v3, 0x2710

    :try_start_de
    invoke-interface {v12, v3}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_e1} :catch_2bf

    .line 535
    :cond_e1
    :goto_e1
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    .line 537
    .local v28, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v13

    .line 541
    .local v13, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v24

    .line 544
    .local v24, mount:Landroid/os/storage/IMountService;
    const-string v3, "ShutdownThread"

    const-string v4, "before Blustoothe"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz v13, :cond_111

    :try_start_109
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_23c

    :cond_111
    const/4 v3, 0x1

    move v14, v3

    .line 548
    .local v14, bluetoothOff:Z
    :goto_113
    if-nez v14, :cond_120

    .line 549
    const-string v3, "ShutdownThread"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_120
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_120} :catch_240

    .line 560
    :cond_120
    :goto_120
    if-nez v28, :cond_251

    const/4 v3, 0x1

    move v11, v3

    .line 561
    .local v11, PhoneOff:Z
    :goto_124
    :try_start_124
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneOff == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-nez v11, :cond_177

    .line 565
    const-string v3, "ShutdownThread"

    const-string v4, "Turning off radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v31, 0x0

    .local v31, sysPropertyCnt:I
    :goto_147
    const/4 v3, 0x5

    move/from16 v0, v31

    move v1, v3

    if-ge v0, v1, :cond_170

    .line 569
    const-string/jumbo v3, "sys.deviceOff"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 571
    const-string/jumbo v3, "sys.deviceOff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_255

    .line 572
    const-string v3, "ShutdownThread"

    const-string v4, "Device off mode set!!! sys.deviceOff : 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_170
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move v1, v3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_177
    .catch Landroid/os/RemoteException; {:try_start_124 .. :try_end_177} :catch_259

    .line 587
    .end local v31           #sysPropertyCnt:I
    :cond_177
    :goto_177
    const-string v3, "ShutdownThread"

    const-string v4, "Waiting for Bluetooth and Radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/16 v23, 0x0

    .local v23, i:I
    :goto_180
    const/16 v3, 0x10

    move/from16 v0, v23

    move v1, v3

    if-ge v0, v1, :cond_1be

    .line 591
    if-nez v14, :cond_193

    .line 593
    :try_start_189
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_18c
    .catch Landroid/os/RemoteException; {:try_start_189 .. :try_end_18c} :catch_26e

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_26a

    const/4 v3, 0x1

    move v14, v3

    .line 601
    :cond_193
    :goto_193
    if-nez v11, :cond_1b3

    .line 606
    const-string v30, ""

    .line 607
    .local v30, repPhoneOff:Ljava/lang/String;
    const-string/jumbo v3, "ril.deviceOffRes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 609
    if-eqz v30, :cond_1b3

    const-string v3, "1"

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 611
    const-string v3, "ShutdownThread"

    const-string v4, "PhoneOff req resp"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v11, 0x1

    .line 618
    .end local v30           #repPhoneOff:Ljava/lang/String;
    :cond_1b3
    if-eqz v11, :cond_27d

    if-eqz v14, :cond_27d

    .line 620
    const-string v3, "ShutdownThread"

    const-string v4, "Radio and Bluetooth shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_1be
    new-instance v25, Lcom/android/internal/app/ShutdownThread$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$8;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 636
    .local v25, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x4e20

    add-long v18, v3, v5

    .line 640
    .local v18, endShutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 642
    if-eqz v24, :cond_294

    .line 643
    :try_start_1e4
    invoke-interface/range {v24 .. v25}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_1e7
    .catchall {:try_start_1e4 .. :try_end_1e7} :catchall_2ad
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1e7} :catch_29d

    .line 650
    :goto_1e7
    :try_start_1e7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_201

    .line 651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v15, v18, v4

    .line 652
    .restart local v15       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-gtz v4, :cond_2b0

    .line 653
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v15           #delay:J
    :cond_201
    monitor-exit v3
    :try_end_202
    .catchall {:try_start_1e7 .. :try_end_202} :catchall_2ad

    .line 663
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 664
    return-void

    .line 420
    .end local v6           #br:Landroid/content/BroadcastReceiver;
    .end local v11           #PhoneOff:Z
    .end local v12           #am:Landroid/app/IActivityManager;
    .end local v13           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v14           #bluetoothOff:Z
    .end local v18           #endShutTime:J
    .end local v20           #endTime:J
    .end local v23           #i:I
    .end local v24           #mount:Landroid/os/storage/IMountService;
    .end local v25           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v28           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v29           #reason:Ljava/lang/String;
    :catch_20a
    move-exception v3

    move-object/from16 v17, v3

    .line 421
    .local v17, e:Ljava/io/IOException;
    :goto_20d
    :try_start_20d
    const-string v3, "ShutdownThread"

    const-string v4, "IOException during FileWriter out.write(\'0\') "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_214
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_214} :catch_216

    goto/16 :goto_16

    .line 426
    .end local v17           #e:Ljava/io/IOException;
    :catch_216
    move-exception v3

    move-object/from16 v17, v3

    .line 427
    .restart local v17       #e:Ljava/io/IOException;
    const-string v3, "ShutdownThread"

    const-string v4, "IOException during FileWriter out.close() "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 487
    .end local v17           #e:Ljava/io/IOException;
    .restart local v6       #br:Landroid/content/BroadcastReceiver;
    :cond_222
    const-string v4, "0"

    goto/16 :goto_53

    :cond_226
    const-string v4, ""

    goto/16 :goto_5d

    .line 507
    .restart local v15       #delay:J
    .restart local v20       #endTime:J
    .restart local v29       #reason:Ljava/lang/String;
    :cond_22a
    :try_start_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_234
    .catchall {:try_start_22a .. :try_end_234} :catchall_239
    .catch Ljava/lang/InterruptedException; {:try_start_22a .. :try_end_234} :catch_236

    goto/16 :goto_9e

    .line 508
    :catch_236
    move-exception v4

    goto/16 :goto_9e

    .line 511
    .end local v15           #delay:J
    :catchall_239
    move-exception v4

    :try_start_23a
    monitor-exit v3
    :try_end_23b
    .catchall {:try_start_23a .. :try_end_23b} :catchall_239

    throw v4

    .line 546
    .restart local v12       #am:Landroid/app/IActivityManager;
    .restart local v13       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v24       #mount:Landroid/os/storage/IMountService;
    .restart local v28       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_23c
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_113

    .line 552
    :catch_240
    move-exception v3

    move-object/from16 v22, v3

    .line 553
    .local v22, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    const/4 v14, 0x1

    .restart local v14       #bluetoothOff:Z
    goto/16 :goto_120

    .line 560
    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_251
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_124

    .line 568
    .restart local v11       #PhoneOff:Z
    .restart local v31       #sysPropertyCnt:I
    :cond_255
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_147

    .line 579
    .end local v31           #sysPropertyCnt:I
    :catch_259
    move-exception v3

    move-object/from16 v22, v3

    .line 580
    .restart local v22       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    const/4 v11, 0x1

    goto/16 :goto_177

    .line 593
    .end local v22           #ex:Landroid/os/RemoteException;
    .restart local v23       #i:I
    :cond_26a
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_193

    .line 595
    :catch_26e
    move-exception v22

    .line 596
    .restart local v22       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    const/4 v14, 0x1

    goto/16 :goto_193

    .line 623
    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_27d
    const-string v3, "ShutdownThread"

    const-string v4, "before SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 625
    const-string v3, "ShutdownThread"

    const-string v4, "after SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_180

    .line 645
    .restart local v18       #endShutTime:J
    .restart local v25       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_294
    :try_start_294
    const-string v4, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29b
    .catchall {:try_start_294 .. :try_end_29b} :catchall_2ad
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_29b} :catch_29d

    goto/16 :goto_1e7

    .line 647
    :catch_29d
    move-exception v4

    move-object/from16 v17, v4

    .line 648
    .local v17, e:Ljava/lang/Exception;
    :try_start_2a0
    const-string v4, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e7

    .line 661
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_2ad
    move-exception v4

    monitor-exit v3
    :try_end_2af
    .catchall {:try_start_2a0 .. :try_end_2af} :catchall_2ad

    throw v4

    .line 657
    .restart local v15       #delay:J
    :cond_2b0
    :try_start_2b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2ba
    .catchall {:try_start_2b0 .. :try_end_2ba} :catchall_2ad
    .catch Ljava/lang/InterruptedException; {:try_start_2b0 .. :try_end_2ba} :catch_2bc

    goto/16 :goto_1e7

    .line 658
    :catch_2bc
    move-exception v4

    goto/16 :goto_1e7

    .line 531
    .end local v11           #PhoneOff:Z
    .end local v13           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v14           #bluetoothOff:Z
    .end local v15           #delay:J
    .end local v18           #endShutTime:J
    .end local v23           #i:I
    .end local v24           #mount:Landroid/os/storage/IMountService;
    .end local v25           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v28           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_2bf
    move-exception v3

    goto/16 :goto_e1

    .line 466
    .end local v6           #br:Landroid/content/BroadcastReceiver;
    .end local v12           #am:Landroid/app/IActivityManager;
    .end local v20           #endTime:J
    .end local v29           #reason:Ljava/lang/String;
    :catch_2c2
    move-exception v3

    goto/16 :goto_40

    .line 420
    .end local v26           #out:Ljava/io/FileWriter;
    .restart local v27       #out:Ljava/io/FileWriter;
    :catch_2c5
    move-exception v3

    move-object/from16 v17, v3

    move-object/from16 v26, v27

    .end local v27           #out:Ljava/io/FileWriter;
    .restart local v26       #out:Ljava/io/FileWriter;
    goto/16 :goto_20d
.end method
