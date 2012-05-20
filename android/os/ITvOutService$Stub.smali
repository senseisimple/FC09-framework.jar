.class public abstract Landroid/os/ITvOutService$Stub;
.super Landroid/os/Binder;
.source "ITvOutService.java"

# interfaces
.implements Landroid/os/ITvOutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ITvOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ITvOutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ITvOutService"

.field static final TRANSACTION_CableConnected:I = 0x2

.field static final TRANSACTION_DisableTvOut:I = 0x5

.field static final TRANSACTION_DisableTvOutForce:I = 0x6

.field static final TRANSACTION_EnableTvOut:I = 0x3

.field static final TRANSACTION_EnableTvOutForce:I = 0x4

.field static final TRANSACTION_SetCableStatus:I = 0xd

.field static final TRANSACTION_SetOrientation:I = 0x8

.field static final TRANSACTION_TvOutResume:I = 0xa

.field static final TRANSACTION_TvOutSetImage:I = 0xb

.field static final TRANSACTION_TvOutSuspend:I = 0x9

.field static final TRANSACTION_TvoutSubtitleIsEnable:I = 0xf

.field static final TRANSACTION_TvoutSubtitlePostString:I = 0x10

.field static final TRANSACTION_TvoutSubtitleSetStatus:I = 0xe

.field static final TRANSACTION_getIntent:I = 0x1

.field static final TRANSACTION_isEnabled:I = 0x7

.field static final TRANSACTION_isSuspended:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ITvOutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_3
    return-object v1

    .line 27
    :cond_4
    const-string v1, "android.os.ITvOutService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/ITvOutService;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Landroid/os/ITvOutService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/ITvOutService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ITvOutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "android.os.ITvOutService"

    .line 39
    sparse-switch p1, :sswitch_data_148

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 43
    :sswitch_c
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 44
    goto :goto_b

    .line 48
    :sswitch_13
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->getIntent()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 52
    goto :goto_b

    .line 56
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_24
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_38

    move v0, v4

    .line 59
    .local v0, _arg0:Z
    :goto_30
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->CableConnected(Z)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 61
    goto :goto_b

    .end local v0           #_arg0:Z
    :cond_38
    move v0, v6

    .line 58
    goto :goto_30

    .line 65
    :sswitch_3a
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->EnableTvOut()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 68
    goto :goto_b

    .line 72
    :sswitch_47
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->EnableTvOutForce()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 75
    goto :goto_b

    .line 79
    :sswitch_54
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->DisableTvOut()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 82
    goto :goto_b

    .line 86
    :sswitch_61
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->DisableTvOutForce()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 89
    goto :goto_b

    .line 93
    :sswitch_6e
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->isEnabled()Z

    move-result v2

    .line 95
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v2, :cond_82

    move v3, v4

    :goto_7d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 97
    goto :goto_b

    :cond_82
    move v3, v6

    .line 96
    goto :goto_7d

    .line 101
    .end local v2           #_result:Z
    :sswitch_84
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->SetOrientation(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 106
    goto/16 :goto_b

    .line 110
    .end local v0           #_arg0:I
    :sswitch_96
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvOutSuspend(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 115
    goto/16 :goto_b

    .line 119
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a8
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvOutResume()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 122
    goto/16 :goto_b

    .line 126
    :sswitch_b6
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvOutSetImage(I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 131
    goto/16 :goto_b

    .line 135
    .end local v0           #_arg0:I
    :sswitch_c8
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->isSuspended()Z

    move-result v2

    .line 137
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v2, :cond_dd

    move v3, v4

    :goto_d7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 139
    goto/16 :goto_b

    :cond_dd
    move v3, v6

    .line 138
    goto :goto_d7

    .line 143
    .end local v2           #_result:Z
    :sswitch_df
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f4

    move v0, v4

    .line 146
    .local v0, _arg0:Z
    :goto_eb
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->SetCableStatus(Z)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 148
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_f4
    move v0, v6

    .line 145
    goto :goto_eb

    .line 152
    :sswitch_f6
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutSubtitleSetStatus(I)Z

    move-result v2

    .line 156
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v2, :cond_10f

    move v3, v4

    :goto_109
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 158
    goto/16 :goto_b

    :cond_10f
    move v3, v6

    .line 157
    goto :goto_109

    .line 162
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_111
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutSubtitleIsEnable()Z

    move-result v2

    .line 164
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v2, :cond_126

    move v3, v4

    :goto_120
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 166
    goto/16 :goto_b

    :cond_126
    move v3, v6

    .line 165
    goto :goto_120

    .line 170
    .end local v2           #_result:Z
    :sswitch_128
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITvOutService$Stub;->TvoutSubtitlePostString(Ljava/lang/String;I)Z

    move-result v2

    .line 176
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v2, :cond_145

    move v3, v4

    :goto_13f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 178
    goto/16 :goto_b

    :cond_145
    move v3, v6

    .line 177
    goto :goto_13f

    .line 39
    nop

    :sswitch_data_148
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_47
        0x5 -> :sswitch_54
        0x6 -> :sswitch_61
        0x7 -> :sswitch_6e
        0x8 -> :sswitch_84
        0x9 -> :sswitch_96
        0xa -> :sswitch_a8
        0xb -> :sswitch_b6
        0xc -> :sswitch_c8
        0xd -> :sswitch_df
        0xe -> :sswitch_f6
        0xf -> :sswitch_111
        0x10 -> :sswitch_128
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
