.class final Landroid/provider/GALResultItem$1;
.super Ljava/lang/Object;
.source "GALResultList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/GALResultItem;
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
        "Landroid/provider/GALResultItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/provider/GALResultItem;
    .registers 4
    .parameter "in"

    .prologue
    .line 25
    new-instance v0, Landroid/provider/GALResultItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/provider/GALResultItem;-><init>(Landroid/os/Parcel;Landroid/provider/GALResultItem$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Landroid/provider/GALResultItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/GALResultItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/provider/GALResultItem;
    .registers 3
    .parameter "size"

    .prologue
    .line 28
    new-array v0, p1, [Landroid/provider/GALResultItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Landroid/provider/GALResultItem$1;->newArray(I)[Landroid/provider/GALResultItem;

    move-result-object v0

    return-object v0
.end method
