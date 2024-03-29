.class public Lcom/android/internal/os/SamplingProfilerIntegration;
.super Ljava/lang/Object;
.source "SamplingProfilerIntegration.java"


# static fields
.field private static INSTANCE:Ldalvik/system/SamplingProfiler; = null

.field private static final TAG:Ljava/lang/String; = "SamplingProfilerIntegration"

.field static dirMade:Z

.field private static final enabled:Z

.field static volatile pending:Z

.field private static final snapshotWriter:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-string v2, "SamplingProfilerIntegration"

    .line 43
    const-string v0, "1"

    const-string/jumbo v1, "persist.sampling_profiler"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    .line 44
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-eqz v0, :cond_26

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    .line 46
    const-string v0, "SamplingProfilerIntegration"

    const-string v0, "Profiler is enabled."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->dirMade:Z

    return-void

    .line 48
    :cond_26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    .line 49
    const-string v0, "SamplingProfilerIntegration"

    const-string v0, "Profiler is disabled."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isEnabled()Z
    .registers 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    return v0
.end method

.method public static start()V
    .registers 4

    .prologue
    .line 66
    sget-boolean v2, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v2, :cond_5

    .line 73
    :goto_4
    return-void

    .line 69
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 70
    .local v0, group:Ljava/lang/ThreadGroup;
    invoke-static {v0}, Ldalvik/system/SamplingProfiler;->newThreadGroupTheadSet(Ljava/lang/ThreadGroup;)Ldalvik/system/SamplingProfiler$ThreadSet;

    move-result-object v1

    .line 71
    .local v1, threadSet:Ldalvik/system/SamplingProfiler$ThreadSet;
    new-instance v2, Ldalvik/system/SamplingProfiler;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Ldalvik/system/SamplingProfiler;-><init>(ILdalvik/system/SamplingProfiler$ThreadSet;)V

    sput-object v2, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    .line 72
    sget-object v2, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ldalvik/system/SamplingProfiler;->start(I)V

    goto :goto_4
.end method

.method public static writeSnapshot(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v0, :cond_5

    .line 117
    :cond_4
    :goto_4
    return-void

    .line 95
    :cond_5
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Z

    if-nez v0, :cond_4

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Z

    .line 97
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/os/SamplingProfilerIntegration$1;

    invoke-direct {v1, p0}, Lcom/android/internal/os/SamplingProfilerIntegration$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private static writeSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "dir"
    .parameter "name"

    .prologue
    const-string v11, "SamplingProfilerIntegration"

    .line 135
    sget-boolean v8, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v8, :cond_7

    .line 181
    :goto_6
    return-void

    .line 138
    :cond_7
    sget-object v8, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    invoke-virtual {v8}, Ldalvik/system/SamplingProfiler;->stop()V

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 146
    .local v6, start:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3a

    const/16 v10, 0x2e

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".snapshot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 154
    .local v0, count:I
    :goto_44
    :try_start_44
    new-instance v4, Ljava/io/PrintStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_53} :catch_69

    .line 170
    .local v4, out:Ljava/io/PrintStream;
    :try_start_53
    sget-object v8, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    invoke-virtual {v8, v4}, Ldalvik/system/SamplingProfiler;->writeHprofData(Ljava/io/PrintStream;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_98

    .line 172
    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    .line 174
    invoke-virtual {v4}, Ljava/io/PrintStream;->checkError()Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 175
    const-string v8, "SamplingProfilerIntegration"

    const-string v8, "Error writing snapshot."

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 156
    .end local v4           #out:Ljava/io/PrintStream;
    :catch_69
    move-exception v8

    move-object v1, v8

    .line 157
    .local v1, e:Ljava/io/FileNotFoundException;
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x3

    if-le v0, v8, :cond_90

    .line 158
    const-string v8, "SamplingProfilerIntegration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 164
    :cond_90
    const-wide/16 v8, 0x9c4

    :try_start_92
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_95
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_44

    .line 165
    :catch_96
    move-exception v8

    goto :goto_44

    .line 172
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v4       #out:Ljava/io/PrintStream;
    :catchall_98
    move-exception v8

    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    throw v8

    .line 177
    :cond_9d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v6

    .line 178
    .local v2, elapsed:J
    const-string v8, "SamplingProfilerIntegration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrote snapshot for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public static writeZygoteSnapshot()V
    .registers 2

    .prologue
    .line 123
    sget-boolean v1, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v1, :cond_5

    .line 132
    :goto_4
    return-void

    .line 127
    :cond_5
    const-string v0, "/data/zygote/snapshots"

    .line 128
    .local v0, dir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 129
    const-string/jumbo v1, "zygote"

    invoke-static {v0, v1}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler;->shutdown()V

    .line 131
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    goto :goto_4
.end method
