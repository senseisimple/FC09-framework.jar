.class public Landroid/net/wimax/DeviceVersion;
.super Ljava/lang/Object;
.source "DeviceVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wimax/DeviceVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field strName:Ljava/lang/String;

.field strVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Landroid/net/wimax/DeviceVersion$1;

    invoke-direct {v0}, Landroid/net/wimax/DeviceVersion$1;-><init>()V

    sput-object v0, Landroid/net/wimax/DeviceVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 7
    .parameter "recv"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v2, 0x0

    .local v2, recvVersion:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 22
    .local v0, Version:Ljava/lang/String;
    move-object v2, p1

    .line 24
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "#"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 29
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_1c
    iput-object v1, p0, Landroid/net/wimax/DeviceVersion;->strName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Landroid/net/wimax/DeviceVersion;->strVersion:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/wimax/DeviceVersion;->strName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Landroid/net/wimax/DeviceVersion;->strVersion:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceVersion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/DeviceVersion;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wimax/DeviceVersion;->strVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/wimax/DeviceVersion;->strName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroid/net/wimax/DeviceVersion;->strVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void
.end method
