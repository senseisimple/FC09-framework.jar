.class Landroid/media/AudioService$FocusStackEntry;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusStackEntry"
.end annotation


# instance fields
.field public mClientId:Ljava/lang/String;

.field public mFocusChangeType:I

.field public mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field public mIsTransportControlReceiver:Z

.field public mSourceRef:Landroid/os/IBinder;

.field public mStreamType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2183
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 2184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$FocusStackEntry;->mIsTransportControlReceiver:Z

    .line 2185
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2186
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 2191
    return-void
.end method

.method public constructor <init>(IIZLandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9
    .parameter "streamType"
    .parameter "duration"
    .parameter "isTransportControlReceiver"
    .parameter "afl"
    .parameter "source"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 2194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2183
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 2184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$FocusStackEntry;->mIsTransportControlReceiver:Z

    .line 2185
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2186
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 2195
    iput p1, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 2196
    iput-boolean p3, p0, Landroid/media/AudioService$FocusStackEntry;->mIsTransportControlReceiver:Z

    .line 2197
    iput-object p4, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2198
    iput-object p5, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 2199
    iput-object p6, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    .line 2200
    iput p2, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    .line 2201
    return-void
.end method
