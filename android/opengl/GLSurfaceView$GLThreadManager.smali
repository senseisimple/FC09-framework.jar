.class Landroid/opengl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1653
    const-string v0, "GLThreadManager"

    sput-object v0, Landroid/opengl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/GLSurfaceView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1652
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1734
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_3f

    .line 1735
    const-string/jumbo v0, "ro.opengles.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1738
    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x2

    if-lt v0, v1, :cond_17

    .line 1739
    iput-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1742
    :cond_17
    sget-object v0, Landroid/opengl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGLESVersion mGLESVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMultipleGLESContextsAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iput-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1747
    :cond_3f
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .parameter "gl"

    .prologue
    const/4 v3, 0x1

    .line 1717
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v1, :cond_4a

    .line 1718
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1719
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v2, 0x2

    if-ge v1, v2, :cond_47

    .line 1720
    const/16 v1, 0x1f01

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1721
    .local v0, renderer:Ljava/lang/String;
    const-string v1, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    move v1, v3

    :goto_1e
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1724
    sget-object v1, Landroid/opengl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGLDriver renderer = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" multipleContextsAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1729
    .end local v0           #renderer:Ljava/lang/String;
    :cond_47
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_4e

    .line 1731
    :cond_4a
    monitor-exit p0

    return-void

    .line 1721
    .restart local v0       #renderer:Ljava/lang/String;
    :cond_4c
    const/4 v1, 0x0

    goto :goto_1e

    .line 1717
    .end local v0           #renderer:Ljava/lang/String;
    :catchall_4e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 1698
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_7

    .line 1699
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    .line 1701
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1702
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .registers 2

    .prologue
    .line 1708
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .registers 2

    .prologue
    .line 1712
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1713
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 1712
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 1659
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    #setter for: Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->access$1102(Landroid/opengl/GLSurfaceView$GLThread;Z)Z

    .line 1660
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_c

    .line 1661
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    .line 1663
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1664
    monitor-exit p0

    return-void

    .line 1659
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)Z
    .registers 4
    .parameter "thread"

    .prologue
    const/4 v1, 0x1

    .line 1674
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-eq v0, p1, :cond_9

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-nez v0, :cond_10

    .line 1675
    :cond_9
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    .line 1676
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    move v0, v1

    .line 1690
    :goto_f
    return v0

    .line 1679
    :cond_10
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1680
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v0, :cond_19

    move v0, v1

    .line 1681
    goto :goto_f

    .line 1687
    :cond_19
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_22

    .line 1688
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    .line 1690
    :cond_22
    const/4 v0, 0x0

    goto :goto_f
.end method
