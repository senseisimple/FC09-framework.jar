.class public Landroid/server/BluetoothService$BondState;
.super Ljava/lang/Object;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BondState"
.end annotation


# static fields
.field private static final AUTO_PAIRING_BLACKLIST:Ljava/lang/String; = "/etc/bluetooth/auto_pairing.conf"

.field private static final DYNAMIC_AUTO_PAIRING_BLACKLIST:Ljava/lang/String; = "/data/misc/bluetooth/dynamic_auto_pairing.conf"


# instance fields
.field private mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingOutgoingBonding:Ljava/lang/String;

.field private final mPinAttempt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;)V
    .registers 3
    .parameter

    .prologue
    .line 1107
    iput-object p1, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    .line 1109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$BondState;->mPinAttempt:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$3000(Landroid/server/BluetoothService$BondState;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1107
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$BondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    return-void
.end method

.method private copyAutoPairingData()V
    .registers 12

    .prologue
    const-string v9, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    .line 1293
    const/4 v2, 0x0

    .line 1294
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 1295
    .local v4, in:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 1297
    .local v7, out:Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_9b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_5c

    .line 1298
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_80
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_f} :catch_9e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_8c

    move-result v9

    if-eqz v9, :cond_1a

    .line 1314
    if-eqz v4, :cond_15

    :try_start_14
    throw v4

    .line 1315
    :cond_15
    if-eqz v7, :cond_18

    throw v7
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_7c

    :cond_18
    :goto_18
    move-object v2, v3

    .line 1318
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :cond_19
    :goto_19
    return-void

    .line 1300
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :cond_1a
    :try_start_1a
    new-instance v5, Ljava/io/FileInputStream;

    const-string v9, "/etc/bluetooth/auto_pairing.conf"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_80
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_21} :catch_9e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_8c

    .line 1301
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    :try_start_21
    new-instance v8, Ljava/io/FileOutputStream;

    const-string v9, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_83
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_28} :catch_a2
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_90

    .line 1303
    .end local v7           #out:Ljava/io/FileOutputStream;
    .local v8, out:Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_2a
    new-array v0, v9, [B

    .line 1305
    .local v0, buf:[B
    :goto_2c
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, len:I
    if-lez v6, :cond_4e

    .line 1306
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_87
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_36} :catch_37
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_36} :catch_95

    goto :goto_2c

    .line 1308
    .end local v0           #buf:[B
    .end local v6           #len:I
    :catch_37
    move-exception v9

    move-object v1, v9

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 1309
    .end local v3           #file:Ljava/io/File;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v2       #file:Ljava/io/File;
    :goto_3c
    :try_start_3c
    const-string v9, "FileNotFoundException: in copyAutoPairingData"

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1300(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_6e

    .line 1314
    if-eqz v4, :cond_46

    :try_start_43
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1315
    :cond_46
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4b} :catch_4c

    goto :goto_19

    .line 1316
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_4c
    move-exception v9

    goto :goto_19

    .line 1314
    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v6       #len:I
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :cond_4e
    if-eqz v5, :cond_53

    :try_start_50
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1315
    :cond_53
    if-eqz v8, :cond_58

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_58} :catch_7a

    :cond_58
    :goto_58
    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 1317
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_19

    .line 1310
    .end local v0           #buf:[B
    .end local v6           #len:I
    :catch_5c
    move-exception v9

    move-object v1, v9

    .line 1311
    .local v1, e:Ljava/io/IOException;
    :goto_5e
    :try_start_5e
    const-string v9, "IOException: in copyAutoPairingData"

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothService;->access$1300(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_6e

    .line 1314
    if-eqz v4, :cond_68

    :try_start_65
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1315
    :cond_68
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6d} :catch_4c

    goto :goto_19

    .line 1313
    .end local v1           #e:Ljava/io/IOException;
    :catchall_6e
    move-exception v9

    .line 1314
    :goto_6f
    if-eqz v4, :cond_74

    :try_start_71
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1315
    :cond_74
    if-eqz v7, :cond_79

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_7e

    .line 1313
    :cond_79
    :goto_79
    throw v9

    .line 1316
    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v6       #len:I
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :catch_7a
    move-exception v9

    goto :goto_58

    .end local v0           #buf:[B
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v6           #len:I
    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_7c
    move-exception v9

    goto :goto_18

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catch_7e
    move-exception v10

    goto :goto_79

    .line 1313
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_80
    move-exception v9

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_6f

    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catchall_83
    move-exception v9

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_6f

    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :catchall_87
    move-exception v9

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_6f

    .line 1310
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_8c
    move-exception v9

    move-object v1, v9

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_5e

    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catch_90
    move-exception v9

    move-object v1, v9

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_5e

    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :catch_95
    move-exception v9

    move-object v1, v9

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_5e

    .line 1308
    :catch_9b
    move-exception v9

    move-object v1, v9

    goto :goto_3c

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_9e
    move-exception v9

    move-object v1, v9

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3c

    .end local v2           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catch_a2
    move-exception v9

    move-object v1, v9

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3c
.end method

.method private declared-synchronized setPendingOutgoingBonding(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 1127
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/server/BluetoothService$BondState;->mPendingOutgoingBonding:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1128
    monitor-exit p0

    return-void

    .line 1127
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAutoPairingData(Ljava/lang/String;)V
    .registers 9
    .parameter "address"

    .prologue
    .line 1370
    const/4 v1, 0x0

    .line 1372
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_e} :catch_36
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_5a

    .line 1373
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1374
    .local v3, str:Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_20

    .line 1375
    const-string v4, "DynamicAddressBlacklist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    :cond_20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_87
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_2f} :catch_8e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2f} :catch_8a

    .line 1385
    if-eqz v2, :cond_34

    .line 1387
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_85

    :cond_34
    :goto_34
    move-object v1, v2

    .line 1393
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #str:Ljava/lang/StringBuilder;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_35
    :goto_35
    return-void

    .line 1380
    :catch_36
    move-exception v4

    move-object v0, v4

    .line 1381
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_38
    :try_start_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException: updateAutoPairingData"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/server/BluetoothService;->access$1300(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_7c

    .line 1385
    if-eqz v1, :cond_35

    .line 1387
    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_35

    .line 1388
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_58
    move-exception v4

    goto :goto_35

    .line 1382
    :catch_5a
    move-exception v4

    move-object v0, v4

    .line 1383
    .local v0, e:Ljava/io/IOException;
    :goto_5c
    :try_start_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: updateAutoPairingData"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/server/BluetoothService;->access$1300(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_5c .. :try_end_76} :catchall_7c

    .line 1385
    if-eqz v1, :cond_35

    .line 1387
    :try_start_78
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_58

    goto :goto_35

    .line 1385
    .end local v0           #e:Ljava/io/IOException;
    :catchall_7c
    move-exception v4

    :goto_7d
    if-eqz v1, :cond_82

    .line 1387
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 1385
    :cond_82
    :goto_82
    throw v4

    .line 1388
    :catch_83
    move-exception v5

    goto :goto_82

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #str:Ljava/lang/StringBuilder;
    :catch_85
    move-exception v4

    goto :goto_34

    .line 1385
    .end local v3           #str:Ljava/lang/StringBuilder;
    :catchall_87
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_7d

    .line 1382
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_8a
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_5c

    .line 1380
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_8e
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_38
.end method


# virtual methods
.method public declared-synchronized addAutoPairingFailure(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 1251
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    .line 1255
    :cond_c
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$BondState;->updateAutoPairingData(Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1257
    monitor-exit p0

    return-void

    .line 1251
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attempt(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 1282
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1284
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_18

    .line 1285
    const/4 v1, 0x1

    .line 1289
    .local v1, newAttempt:I
    :goto_c
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->mPinAttempt:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1f

    .line 1290
    monitor-exit p0

    return-void

    .line 1287
    .end local v1           #newAttempt:I
    :cond_18
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .restart local v1       #newAttempt:I
    goto :goto_c

    .line 1282
    .end local v0           #attempt:Ljava/lang/Integer;
    .end local v1           #newAttempt:I
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clearPinAttempts(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 1264
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1265
    monitor-exit p0

    return-void

    .line 1264
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAttempt(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 1274
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService$BondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 1275
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_e

    .line 1276
    const/4 v1, 0x0

    .line 1278
    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    move-result v1

    goto :goto_c

    .line 1274
    .end local v0           #attempt:Ljava/lang/Integer;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 1233
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_14

    .line 1234
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_f

    .line 1235
    const/16 v1, 0xa

    .line 1237
    :goto_d
    monitor-exit p0

    return v1

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14

    move-result v1

    goto :goto_d

    .line 1233
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1131
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mPendingOutgoingBonding:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAutoPairingFailed(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1268
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 1270
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result v0

    goto :goto_6

    .line 1268
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1260
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAutoPairingBlacklisted(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v5, 0x1

    .line 1204
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_1f

    .line 1205
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1206
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 1229
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1e
    return v4

    .line 1210
    :cond_1f
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_3d

    .line 1211
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1212
    .restart local v0       #blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move v4, v5

    goto :goto_1e

    .line 1215
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3d
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1216
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_81

    .line 1217
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_63

    .line 1218
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1219
    .local v1, blacklistName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    move v4, v5

    goto :goto_1e

    .line 1223
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_63
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_81

    .line 1224
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1225
    .restart local v1       #blacklistName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    move v4, v5

    goto :goto_1e

    .line 1229
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_81
    const/4 v4, 0x0

    goto :goto_1e
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .registers 6
    .parameter "state"

    .prologue
    .line 1241
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1242
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1243
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 1244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_16

    .line 1241
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1247
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_36

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized loadBondState()V
    .registers 11

    .prologue
    .line 1135
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:I
    invoke-static {v7}, Landroid/server/BluetoothService;->access$2700(Landroid/server/BluetoothService;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_6b

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_d

    .line 1157
    :cond_b
    monitor-exit p0

    return-void

    .line 1138
    :cond_d
    const/4 v1, 0x0

    .line 1139
    .local v1, bonds:[Ljava/lang/String;
    :try_start_e
    iget-object v7, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    const-string v8, "Devices"

    invoke-virtual {v7, v8}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1140
    .local v6, val:Ljava/lang/String;
    if-eqz v6, :cond_1e

    .line 1141
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1143
    :cond_1e
    if-eqz v1, :cond_b

    .line 1146
    iget-object v7, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 1147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bonded devices"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Landroid/server/BluetoothService;->access$1300(Ljava/lang/String;)V

    .line 1148
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_45
    if-ge v4, v5, :cond_b

    aget-object v2, v0, v4

    .line 1150
    .local v2, device:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v7, v2}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1151
    .local v3, deviceAddr:Ljava/lang/String;
    if-eqz v3, :cond_63

    .line 1152
    iget-object v7, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 1154
    :cond_63
    const-string v7, "BluetoothService"

    const-string v8, "deviceAddr is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_e .. :try_end_6a} :catchall_6b

    goto :goto_60

    .line 1135
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #bonds:[Ljava/lang/String;
    .end local v2           #device:Ljava/lang/String;
    .end local v3           #deviceAddr:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #val:Ljava/lang/String;
    :catchall_6b
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public readAutoPairingData()V
    .registers 11

    .prologue
    .line 1321
    iget-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 1365
    :cond_4
    :goto_4
    return-void

    .line 1322
    :cond_5
    invoke-direct {p0}, Landroid/server/BluetoothService$BondState;->copyAutoPairingData()V

    .line 1323
    const/4 v2, 0x0

    .line 1325
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_113
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_10} :catch_118
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_115

    .line 1326
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_10
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1327
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1329
    .local v1, file:Ljava/io/BufferedReader;
    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_107

    .line 1330
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1331
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1f

    const-string v8, "//"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 1332
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1333
    .local v7, value:[Ljava/lang/String;
    if-eqz v7, :cond_1f

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1f

    .line 1334
    const/4 v8, 0x1

    aget-object v8, v7, v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1335
    .local v6, val:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "AddressBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 1336
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    :try_end_62
    .catchall {:try_start_10 .. :try_end_62} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_62} :catch_63
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_62} :catch_a2

    goto :goto_1f

    .line 1352
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catch_63
    move-exception v8

    move-object v0, v8

    move-object v2, v3

    .line 1353
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_66
    :try_start_66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: readAutoPairingData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1300(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_113

    .line 1357
    if-eqz v2, :cond_4

    .line 1359
    :try_start_82
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_87

    goto/16 :goto_4

    .line 1360
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_87
    move-exception v8

    goto/16 :goto_4

    .line 1338
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_8a
    const/4 v8, 0x0

    :try_start_8b
    aget-object v8, v7, v8

    const-string v9, "ExactNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 1339
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;
    :try_end_a0
    .catchall {:try_start_8b .. :try_end_a0} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_a0} :catch_63
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_a0} :catch_a2

    goto/16 :goto_1f

    .line 1354
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catch_a2
    move-exception v8

    move-object v0, v8

    move-object v2, v3

    .line 1355
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_a5
    :try_start_a5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: readAutoPairingData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1300(Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_113

    .line 1357
    if-eqz v2, :cond_4

    .line 1359
    :try_start_c1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_87

    goto/16 :goto_4

    .line 1341
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_c6
    const/4 v8, 0x0

    :try_start_c7
    aget-object v8, v7, v8

    const-string v9, "PartialNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e6

    .line 1342
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;
    :try_end_dc
    .catchall {:try_start_c7 .. :try_end_dc} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_c7 .. :try_end_dc} :catch_63
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_dc} :catch_a2

    goto/16 :goto_1f

    .line 1357
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catchall_de
    move-exception v8

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_e0
    if-eqz v2, :cond_e5

    .line 1359
    :try_start_e2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_10f

    .line 1357
    :cond_e5
    :goto_e5
    throw v8

    .line 1344
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_e6
    const/4 v8, 0x0

    :try_start_e7
    aget-object v8, v7, v8

    const-string v9, "DynamicAddressBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fe

    .line 1345
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    goto/16 :goto_1f

    .line 1348
    :cond_fe
    const-string v8, "BluetoothService"

    const-string v9, "Error parsing Auto pairing blacklist file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catchall {:try_start_e7 .. :try_end_105} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_e7 .. :try_end_105} :catch_63
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_105} :catch_a2

    goto/16 :goto_1f

    .line 1357
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :cond_107
    if-eqz v3, :cond_10c

    .line 1359
    :try_start_109
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10c} :catch_111

    :cond_10c
    :goto_10c
    move-object v2, v3

    .line 1364
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 1360
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    :catch_10f
    move-exception v9

    goto :goto_e5

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :catch_111
    move-exception v8

    goto :goto_10c

    .line 1357
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :catchall_113
    move-exception v8

    goto :goto_e0

    .line 1354
    :catch_115
    move-exception v8

    move-object v0, v8

    goto :goto_a5

    .line 1352
    :catch_118
    move-exception v8

    move-object v0, v8

    goto/16 :goto_66
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;I)V
    .registers 4
    .parameter "address"
    .parameter "state"

    .prologue
    .line 1160
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1161
    monitor-exit p0

    return-void

    .line 1160
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;II)V
    .registers 8
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 1165
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_98

    move-result v1

    .line 1166
    .local v1, oldState:I
    if-ne v1, p2, :cond_9

    .line 1201
    :goto_7
    monitor-exit p0

    return-void

    .line 1172
    :cond_9
    const/16 v2, 0xb

    if-ne v1, v2, :cond_18

    .line 1173
    :try_start_d
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->mPendingOutgoingBonding:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1174
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/BluetoothService$BondState;->mPendingOutgoingBonding:Ljava/lang/String;

    .line 1178
    :cond_18
    const/16 v2, 0xc

    if-ne p2, v2, :cond_21

    .line 1179
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;
    invoke-static {v2, p1}, Landroid/server/BluetoothService;->access$2800(Landroid/server/BluetoothService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 1183
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bond state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothService;->access$1300(Ljava/lang/String;)V

    .line 1184
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$2900(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1186
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1187
    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1188
    const/16 v2, 0xa

    if-ne p2, v2, :cond_9b

    .line 1189
    if-gtz p3, :cond_81

    .line 1190
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "setBondState() called to unbond device, but reason code is invalid. Overriding reason code with BOND_RESULT_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/16 p3, 0x9

    .line 1194
    :cond_81
    const-string v2, "android.bluetooth.device.extra.REASON"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    :goto_8b
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_d .. :try_end_96} :catchall_98

    goto/16 :goto_7

    .line 1165
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #oldState:I
    :catchall_98
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1197
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #oldState:I
    :cond_9b
    :try_start_9b
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_98

    goto :goto_8b
.end method
