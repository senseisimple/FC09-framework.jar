.class final Landroid/app/Notification$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
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
        "Landroid/app/Notification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/Notification;
    .registers 3
    .parameter "parcel"

    .prologue
    .line 548
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Landroid/app/Notification$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/Notification;
    .registers 3
    .parameter "size"

    .prologue
    .line 553
    new-array v0, p1, [Landroid/app/Notification;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Landroid/app/Notification$1;->newArray(I)[Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
