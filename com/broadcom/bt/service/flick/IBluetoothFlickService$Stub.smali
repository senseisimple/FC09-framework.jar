.class public abstract Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothFlickService.java"

# interfaces
.implements Lcom/broadcom/bt/service/flick/IBluetoothFlickService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/flick/IBluetoothFlickService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.flick.IBluetoothFlickService"

.field static final TRANSACTION_disableFlick:I = 0x2

.field static final TRANSACTION_enableFlick:I = 0x1

.field static final TRANSACTION_sendFlick:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.broadcom.bt.service.flick.IBluetoothFlickService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/flick/IBluetoothFlickService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "com.broadcom.bt.service.flick.IBluetoothFlickService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-string v3, "com.broadcom.bt.service.flick.IBluetoothFlickService"

    .line 41
    sparse-switch p1, :sswitch_data_3e

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 45
    :sswitch_b
    const-string v1, "com.broadcom.bt.service.flick.IBluetoothFlickService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 46
    goto :goto_a

    .line 50
    :sswitch_12
    const-string v1, "com.broadcom.bt.service.flick.IBluetoothFlickService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub;->enableFlick()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 53
    goto :goto_a

    .line 57
    :sswitch_1f
    const-string v1, "com.broadcom.bt.service.flick.IBluetoothFlickService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub;->disableFlick()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 60
    goto :goto_a

    .line 64
    :sswitch_2c
    const-string v1, "com.broadcom.bt.service.flick.IBluetoothFlickService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub;->sendFlick(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 69
    goto :goto_a

    .line 41
    nop

    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
