.class public Landroid/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Browser$SearchColumns;,
        Landroid/provider/Browser$FolderColumns;,
        Landroid/provider/Browser$BookmarkColumns;
    }
.end annotation


# static fields
.field public static final BOOKMARKS_URI:Landroid/net/Uri; = null

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final FOLDERS_URI:Landroid/net/Uri; = null

.field public static final FOLDER_PROJECTION:[Ljava/lang/String; = null

.field public static final FOLDER_PROJECTION_CREATED_INDEX:I = 0x2

.field public static final FOLDER_PROJECTION_ID_INDEX:I = 0x0

.field public static final FOLDER_PROJECTION_POSITION_INDEX:I = 0x3

.field public static final FOLDER_PROJECTION_TITLE_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION:[Ljava/lang/String; = null

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final HISTORY_PROJECTION_FOLDER_INDEX:I = 0xa

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String; = null

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final SEARCHES_URI:Landroid/net/Uri; = null

.field private static final SEARCHES_WHERE_CLAUSE:Ljava/lang/String; = "search = ?"

.field public static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String; = null

.field public static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "_id"

    .line 34
    const-string v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://browser/folders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string v1, "created"

    aput-object v1, v0, v5

    const-string/jumbo v1, "position"

    aput-object v1, v0, v7

    sput-object v0, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    .line 100
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string/jumbo v1, "url"

    aput-object v1, v0, v4

    const-string/jumbo v1, "visits"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "touch_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "user_entered"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "folder"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 136
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 143
    const-string v0, "content://browser/searches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 148
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string/jumbo v1, "search"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    return-void
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "sb"

    .prologue
    .line 273
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    return-void
.end method

.method public static final addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 13
    .parameter "cr"
    .parameter "search"

    .prologue
    .line 603
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 604
    .local v9, now:J
    const/4 v6, 0x0

    .line 606
    .local v6, c:Landroid/database/Cursor;
    :try_start_a
    sget-object v1, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "search = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 612
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 613
    .local v8, map:Landroid/content/ContentValues;
    const-string/jumbo v0, "search"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v0, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 616
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 617
    sget-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_a .. :try_end_55} :catchall_70
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_55} :catch_61

    .line 624
    :goto_55
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 626
    .end local v8           #map:Landroid/content/ContentValues;
    :cond_5a
    :goto_5a
    return-void

    .line 619
    .restart local v8       #map:Landroid/content/ContentValues;
    :cond_5b
    :try_start_5b
    sget-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_70
    .catch Ljava/lang/IllegalStateException; {:try_start_5b .. :try_end_60} :catch_61

    goto :goto_55

    .line 621
    .end local v8           #map:Landroid/content/ContentValues;
    :catch_61
    move-exception v0

    move-object v7, v0

    .line 622
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_63
    const-string v0, "browser"

    const-string v1, "addSearchUrl"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_70

    .line 624
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_70
    move-exception v0

    if-eqz v6, :cond_76

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_76
    throw v0
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .registers 10
    .parameter "cr"

    .prologue
    .line 457
    const/4 v6, 0x0

    .line 458
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 460
    .local v8, ret:Z
    :try_start_2
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "bookmark"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "visits"

    aput-object v3, v2, v0

    const-string v3, "bookmark = 0 OR visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 469
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_39
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_23} :catch_2a

    move-result v8

    .line 473
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_29
    :goto_29
    return v8

    .line 470
    :catch_2a
    move-exception v0

    move-object v7, v0

    .line 471
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_2c
    const-string v0, "browser"

    const-string v1, "canClearHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_39

    .line 473
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_39
    move-exception v0

    if-eqz v6, :cond_3f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "cr"

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public static final clearSearches(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "cr"

    .prologue
    .line 636
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    .line 640
    :goto_7
    return-void

    .line 637
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 638
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "browser"

    const-string v2, "clearSearches"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .parameter "cr"
    .parameter "url"

    .prologue
    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {v1, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, matchesUrl:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .registers 12
    .parameter "cr"
    .parameter "begin"
    .parameter "end"

    .prologue
    const-wide/16 v3, -0x1

    const-string v6, " >= "

    const-string v5, " < "

    .line 565
    const-string v0, "date"

    .line 566
    .local v0, date:Ljava/lang/String;
    cmp-long v2, v3, p1

    if-nez v2, :cond_33

    .line 567
    cmp-long v2, v3, p3

    if-nez v2, :cond_14

    .line 568
    invoke-static {p0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 579
    :goto_13
    return-void

    .line 571
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, whereClause:Ljava/lang/String;
    :goto_2f
    invoke-static {p0, v1}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_13

    .line 572
    .end local v1           #whereClause:Ljava/lang/String;
    :cond_33
    cmp-long v2, v3, p3

    if-nez v2, :cond_53

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #whereClause:Ljava/lang/String;
    goto :goto_2f

    .line 575
    .end local v1           #whereClause:Ljava/lang/String;
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #whereClause:Ljava/lang/String;
    goto :goto_2f
.end method

.method private static final deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 9
    .parameter "cr"
    .parameter "whereClause"

    .prologue
    .line 499
    const/4 v6, 0x0

    .line 501
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_bb
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_c} :catch_c1

    move-result-object v0

    .line 506
    .end local v6           #c:Landroid/database/Cursor;
    .local v0, c:Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 507
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v2

    .line 511
    .local v2, iconDb:Landroid/webkit/WebIconDatabase;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 512
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 514
    .local v1, firstTime:Z
    :cond_1d
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, url:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_96

    const/4 v3, 0x1

    .line 517
    .local v3, isBookmark:Z
    :goto_2b
    if-eqz v3, :cond_ae

    .line 518
    if-eqz v1, :cond_98

    .line 519
    const/4 v1, 0x0

    .line 523
    .end local v3           #isBookmark:Z
    :goto_30
    const-string v3, "( _id = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 525
    const-string v3, " )"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    :goto_42
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 531
    if-nez v1, :cond_6e

    .line 532
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #firstTime:Z
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v1, map:Landroid/content/ContentValues;
    const-string/jumbo v2, "visits"

    .end local v2           #iconDb:Landroid/webkit/WebIconDatabase;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    const-string v2, "date"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 539
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :cond_6e
    const-string v1, "bookmark = 0"

    .line 540
    .local v1, deleteWhereClause:Ljava/lang/String;
    if-eqz p1, :cond_c5

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #deleteWhereClause:Ljava/lang/String;
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 543
    .local p1, deleteWhereClause:Ljava/lang/String;
    :goto_89
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_d .. :try_end_8f} :catchall_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_8f} :catch_9e

    .line 549
    .end local v5           #url:Ljava/lang/String;
    .end local p1           #deleteWhereClause:Ljava/lang/String;
    :cond_8f
    if-eqz v0, :cond_94

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_94
    move-object p0, v0

    .line 551
    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :cond_95
    :goto_95
    return-void

    .line 515
    .restart local v0       #c:Landroid/database/Cursor;
    .local v1, firstTime:Z
    .restart local v2       #iconDb:Landroid/webkit/WebIconDatabase;
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    .restart local v5       #url:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :cond_96
    const/4 v3, 0x0

    goto :goto_2b

    .line 521
    .restart local v3       #isBookmark:Z
    :cond_98
    :try_start_98
    const-string v3, " OR "

    .end local v3           #isBookmark:Z
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_9d} :catch_9e

    goto :goto_30

    .line 545
    .end local v1           #firstTime:Z
    .end local v2           #iconDb:Landroid/webkit/WebIconDatabase;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    .end local v5           #url:Ljava/lang/String;
    .end local p1           #whereClause:Ljava/lang/String;
    :catch_9e
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 546
    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    .local p1, e:Ljava/lang/IllegalStateException;
    :goto_a1
    :try_start_a1
    const-string v0, "browser"

    const-string v1, "deleteHistoryWhere"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_bf

    .line 549
    if-eqz p0, :cond_95

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_95

    .line 527
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #firstTime:Z
    .restart local v2       #iconDb:Landroid/webkit/WebIconDatabase;
    .restart local v3       #isBookmark:Z
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    .restart local v5       #url:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :cond_ae
    :try_start_ae
    invoke-virtual {v2, v5}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_ae .. :try_end_b1} :catch_9e

    goto :goto_42

    .line 549
    .end local v1           #firstTime:Z
    .end local v2           #iconDb:Landroid/webkit/WebIconDatabase;
    .end local v3           #isBookmark:Z
    .end local v4           #sb:Ljava/lang/StringBuffer;
    .end local v5           #url:Ljava/lang/String;
    .end local p1           #whereClause:Ljava/lang/String;
    :catchall_b2
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_b5
    if-eqz p0, :cond_ba

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_ba
    throw p1

    .restart local v6       #c:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #whereClause:Ljava/lang/String;
    :catchall_bb
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_b5

    .local p1, e:Ljava/lang/IllegalStateException;
    :catchall_bf
    move-exception p1

    goto :goto_b5

    .line 545
    .restart local v6       #c:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :catch_c1
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_a1

    .restart local v0       #c:Landroid/database/Cursor;
    .local v1, deleteWhereClause:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_c5
    move-object p1, v1

    .end local v1           #deleteWhereClause:Ljava/lang/String;
    .local p1, deleteWhereClause:Ljava/lang/String;
    goto :goto_89
.end method

.method public static final getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 233
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "url"

    aput-object v3, v2, v0

    const-string v3, "bookmark = 1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllBookmarksWithFields(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "cr"
    .parameter "whereClause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 246
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bookmark = 1 and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllFoldersWithFields(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "cr"
    .parameter "whereClause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 255
    sget-object v1, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 268
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "url"

    aput-object v4, v2, v0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .registers 11
    .parameter "cr"

    .prologue
    .line 387
    const/4 v6, 0x0

    .line 388
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 390
    .local v9, str:[Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "url"

    aput-object v1, v2, v0

    .line 393
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v3, "visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 396
    const/4 v8, 0x0

    .line 397
    .local v8, i:I
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 398
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_46
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_2b} :catch_34

    .line 399
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 405
    :cond_2e
    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 407
    .end local v2           #projection:[Ljava/lang/String;
    .end local v8           #i:I
    :cond_33
    :goto_33
    return-object v9

    .line 401
    :catch_34
    move-exception v0

    move-object v7, v0

    .line 402
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_36
    const-string v0, "browser"

    const-string v1, "getVisitedHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_46

    .line 405
    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_46
    move-exception v0

    if-eqz v6, :cond_4c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v0
.end method

.method public static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v5, "www."

    const-string/jumbo v1, "url = "

    const-string v3, "https://"

    const-string v2, "http://"

    .line 285
    const/4 v7, 0x0

    .line 286
    .local v7, secure:Z
    move-object v6, p1

    .line 287
    .local v6, compareString:Ljava/lang/String;
    const-string v0, "http://"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 288
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    :cond_1a
    :goto_1a
    const-string/jumbo v0, "www."

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 294
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 296
    :cond_28
    const/4 v8, 0x0

    .line 297
    .local v8, whereClause:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_81

    .line 298
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 301
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 319
    :goto_62
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 289
    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    :cond_71
    const-string v0, "https://"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 290
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 291
    const/4 v7, 0x1

    goto :goto_1a

    .line 305
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    :cond_81
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 308
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "www."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 310
    .local v9, wwwString:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 312
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 315
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_62
.end method

.method public static final requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 4
    .parameter "cr"
    .parameter "where"
    .parameter "listener"

    .prologue
    .line 655
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/webkit/WebIconDatabase;->bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 657
    return-void
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "c"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "c"
    .parameter "s"

    .prologue
    .line 199
    const v0, 0x1040430

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "c"
    .parameter "stringToSend"
    .parameter "chooserDialogTitle"

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, send:Landroid/content/Intent;
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    :try_start_12
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 224
    :goto_19
    return-void

    .line 221
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .registers 10
    .parameter "cr"

    .prologue
    .line 422
    const/4 v6, 0x0

    .line 425
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "bookmark = 0"

    const/4 v4, 0x0

    const-string v5, "date"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_45

    .line 434
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1e
    const/4 v0, 0x5

    if-ge v8, v0, :cond_45

    .line 437
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 440
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_42} :catch_4e

    move-result v0

    if-nez v0, :cond_4b

    .line 446
    .end local v8           #i:I
    :cond_45
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_4a
    :goto_4a
    return-void

    .line 434
    .restart local v8       #i:I
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 443
    .end local v8           #i:I
    :catch_4e
    move-exception v0

    move-object v7, v0

    .line 444
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_50
    const-string v0, "browser"

    const-string/jumbo v1, "truncateHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_5e

    .line 446
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4a

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_5e
    move-exception v0

    if-eqz v6, :cond_64

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0
.end method

.method public static final updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 13
    .parameter "cr"
    .parameter "url"
    .parameter "real"

    .prologue
    const-string/jumbo v8, "visits"

    const-string/jumbo v8, "user_entered"

    const-string v8, "date"

    .line 335
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 336
    .local v3, now:J
    const/4 v0, 0x0

    .line 338
    .local v0, c:Landroid/database/Cursor;
    :try_start_12
    invoke-static {p0, p1}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_79

    .line 341
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v2, map:Landroid/content/ContentValues;
    if-eqz p2, :cond_5d

    .line 343
    const-string/jumbo v8, "visits"

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    :goto_34
    const-string v8, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 351
    .local v5, projection:[Ljava/lang/String;
    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v9, "_id = ?"

    invoke-virtual {p0, v8, v2, v9, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_12 .. :try_end_57} :catchall_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_57} :catch_69

    .line 376
    .end local v5           #projection:[Ljava/lang/String;
    :goto_57
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 378
    .end local v2           #map:Landroid/content/ContentValues;
    :cond_5c
    :goto_5c
    return-void

    .line 346
    .restart local v2       #map:Landroid/content/ContentValues;
    :cond_5d
    :try_start_5d
    const-string/jumbo v8, "user_entered"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_34

    .line 373
    .end local v2           #map:Landroid/content/ContentValues;
    :catch_69
    move-exception v8

    move-object v1, v8

    .line 374
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_6b
    const-string v8, "browser"

    const-string/jumbo v9, "updateVisitedHistory"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_c8

    .line 376
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5c

    .line 353
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_79
    :try_start_79
    invoke-static {p0}, Landroid/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 354
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 357
    .restart local v2       #map:Landroid/content/ContentValues;
    if-eqz p2, :cond_cf

    .line 358
    const/4 v7, 0x1

    .line 359
    .local v7, visits:I
    const/4 v6, 0x0

    .line 364
    .local v6, user_entered:I
    :goto_85
    const-string/jumbo v8, "url"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v8, "visits"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v8, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    const-string v8, "bookmark"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string/jumbo v8, "title"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v8, "created"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string/jumbo v8, "user_entered"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c7
    .catchall {:try_start_79 .. :try_end_c7} :catchall_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_c7} :catch_69

    goto :goto_57

    .line 376
    .end local v2           #map:Landroid/content/ContentValues;
    .end local v6           #user_entered:I
    .end local v7           #visits:I
    :catchall_c8
    move-exception v8

    if-eqz v0, :cond_ce

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_ce
    throw v8

    .line 361
    .restart local v2       #map:Landroid/content/ContentValues;
    :cond_cf
    const/4 v7, 0x0

    .line 362
    .restart local v7       #visits:I
    const/4 v6, 0x1

    .restart local v6       #user_entered:I
    goto :goto_85
.end method
