.class Landroid/location/IAGPSListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAGPSListener.java"

# interfaces
.implements Landroid/location/IAGPSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IAGPSListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/location/IAGPSListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 81
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/location/IAGPSListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "android.location.IAGPSListener"

    return-object v0
.end method

.method public onLBSRequest(IILjava/lang/String;ILjava/lang/String;)V
    .registers 11
    .parameter "NotifyType"
    .parameter "RequestorType"
    .parameter "RequestorName"
    .parameter "ClientType"
    .parameter "ClientName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 106
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.location.IAGPSListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Landroid/location/IAGPSListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_24

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    return-void

    .line 115
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onNMEAChanged(Ljava/lang/String;)V
    .registers 7
    .parameter "Nmea"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.location.IAGPSListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Landroid/location/IAGPSListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    return-void

    .line 99
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
