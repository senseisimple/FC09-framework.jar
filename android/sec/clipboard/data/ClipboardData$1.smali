.class final Landroid/sec/clipboard/data/ClipboardData$1;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/ClipboardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/sec/clipboard/data/ClipboardData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 4
    .parameter "source"

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    .local v1, format:I
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 170
    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_d

    .line 175
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->readFormSource(Landroid/os/Parcel;)V

    .line 177
    :cond_d
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .parameter "size"

    .prologue
    .line 182
    new-array v0, p1, [Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardData$1;->newArray(I)[Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method