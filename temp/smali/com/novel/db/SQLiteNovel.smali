.class public Lcom/novel/db/SQLiteNovel;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteNovel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/db/SQLiteNovel$QuerySchema;,
        Lcom/novel/db/SQLiteNovel$BookmarkSchema;,
        Lcom/novel/db/SQLiteNovel$ArtcileSchema;,
        Lcom/novel/db/SQLiteNovel$NovelSchema;
    }
.end annotation


# static fields
.field public static final DATABASE_FILE_PATH:Ljava/io/File;

.field private static final DATABASE_VERSION:I = 0x7

.field public static final DB_NAME:Ljava/lang/String; = "kosnovel.sqlite"

.field private static db:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private final ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/novel/db/SQLiteNovel;->DATABASE_FILE_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-string v0, "kosnovel.sqlite"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 80
    iput-object p1, p0, Lcom/novel/db/SQLiteNovel;->ctx:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/novel/db/SQLiteNovel;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    return-void
.end method

.method private alterArticleTableAddNum(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 137
    const-string v1, "articles"

    const-string v2, "num"

    invoke-direct {p0, p1, v1, v2}, Lcom/novel/db/SQLiteNovel;->existsColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-string v0, "ALTER TABLE articles ADD COLUMN num INTEGER default 0"

    .line 139
    .local v0, "upgradeQuery":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    .end local v0    # "upgradeQuery":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private alterNovelTableAddLastViewDate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 144
    const-string v1, "novels"

    const-string v2, "last_view_date"

    invoke-direct {p0, p1, v1, v2}, Lcom/novel/db/SQLiteNovel;->existsColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const-string v0, "ALTER TABLE novels ADD COLUMN last_view_date DATETIME default \'2014-08-05 04:30:30\'"

    .line 146
    .local v0, "upgradeQuery":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    .end local v0    # "upgradeQuery":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createHistoryTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 132
    const-string v0, "CREATE TABLE IF NOT EXISTS querys (_id INTEGER PRIMARY KEY,query TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private existsColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "inDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "inTable"    # Ljava/lang/String;
    .param p3, "columnToCheck"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 153
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIMIT 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 156
    .local v1, "mCursor":Landroid/database/Cursor;
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 v2, 0x1

    .line 168
    .end local v1    # "mCursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .line 160
    .restart local v1    # "mCursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v1    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "Exp":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static getSQLiteBoolean(Z)I
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 744
    if-eqz p0, :cond_0

    .line 745
    const/4 v0, 0x1

    .line 747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveDB()V
    .locals 9

    .prologue
    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/novel/db/SQLiteNovel;->ctx:Landroid/content/Context;

    const-string v3, "kosnovel.sqlite"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 206
    .local v7, "currentDB":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "kosnovel"

    invoke-direct {v6, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    .local v6, "cacheDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 209
    :cond_0
    new-instance v8, Ljava/io/File;

    const-string v2, "kosnovel.sqlite"

    invoke-direct {v8, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    .local v8, "sdcardDB":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 212
    .local v1, "src":Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 213
    .local v0, "dst":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 214
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 215
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 217
    iget-object v2, p0, Lcom/novel/db/SQLiteNovel;->ctx:Landroid/content/Context;

    const-string v3, "kosnovel.sqlite"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 218
    invoke-virtual {p0}, Lcom/novel/db/SQLiteNovel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "dst":Ljava/nio/channels/FileChannel;
    .end local v1    # "src":Ljava/nio/channels/FileChannel;
    .end local v6    # "cacheDir":Ljava/io/File;
    .end local v7    # "currentDB":Ljava/io/File;
    .end local v8    # "sdcardDB":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public deleteAllNovels()Z
    .locals 4

    .prologue
    .line 257
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM novels"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 258
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 260
    const/4 v1, 0x1

    return v1
.end method

.method public deleteArticle(Lcom/novel/reader/entity/Article;)Z
    .locals 8
    .param p1, "article"    # Lcom/novel/reader/entity/Article;

    .prologue
    const/4 v7, 0x1

    .line 289
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM articles WHERE `articles`.`id` = ?"

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 290
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 291
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 292
    return v7
.end method

.method public deleteArticles(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const/4 v4, 0x0

    .line 297
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 309
    :goto_0
    return v3

    .line 300
    :cond_0
    const-string v2, ""

    .line 301
    .local v2, "idLst":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/novel/reader/entity/Article;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v3, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM articles WHERE id in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 308
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 309
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public deleteBookmark(Lcom/novel/reader/entity/Bookmark;)Z
    .locals 8
    .param p1, "bookmark"    # Lcom/novel/reader/entity/Bookmark;

    .prologue
    const/4 v7, 0x1

    .line 264
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM bookmarks WHERE `bookmarks`.`id` = ?"

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 265
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    return v7
.end method

.method public deleteBookmarks(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "bookmarks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    const/4 v4, 0x0

    .line 272
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 284
    :goto_0
    return v3

    .line 275
    :cond_0
    const-string v2, ""

    .line 276
    .local v2, "idLst":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Bookmark;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v3, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM bookmarks WHERE id in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 284
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public deleteNovel(Lcom/novel/reader/entity/Novel;)Z
    .locals 8
    .param p1, "novel"    # Lcom/novel/reader/entity/Novel;

    .prologue
    const/4 v7, 0x1

    .line 250
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM novels WHERE `novels`.`id` = ?"

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 251
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 252
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 253
    return v7
.end method

.method public deleteQueryHistory(Ljava/lang/String;)V
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 334
    sget-object v0, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "querys"

    const-string v2, "query = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public findBookMarkByArticle(Lcom/novel/reader/entity/Article;)Lcom/novel/reader/entity/Bookmark;
    .locals 13
    .param p1, "article"    # Lcom/novel/reader/entity/Article;

    .prologue
    .line 803
    const/4 v9, 0x0

    .line 804
    .local v9, "cursor":Landroid/database/Cursor;
    sget-object v10, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT * FROM bookmarks WHERE is_recent_read = 0 AND novel_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " AND article_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ORDER BY id DESC LIMIT 1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, "bookmark":Lcom/novel/reader/entity/Bookmark;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 807
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 808
    .local v1, "ID":I
    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 809
    .local v2, "NOVEL_ID":I
    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 810
    .local v3, "ARTICLE_ID":I
    const/4 v10, 0x3

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 811
    .local v4, "READ_RATE":I
    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 812
    .local v5, "NOVEL_NAME":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 813
    .local v6, "ARTICLE_TITLE":Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 814
    .local v7, "NOVEL_PIC":Ljava/lang/String;
    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_0

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 816
    .local v8, "IS_RECENT_READ":Ljava/lang/Boolean;
    new-instance v0, Lcom/novel/reader/entity/Bookmark;

    .end local v0    # "bookmark":Lcom/novel/reader/entity/Bookmark;
    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 817
    .restart local v0    # "bookmark":Lcom/novel/reader/entity/Bookmark;
    goto :goto_0

    .line 814
    .end local v8    # "IS_RECENT_READ":Ljava/lang/Boolean;
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 818
    .end local v1    # "ID":I
    .end local v2    # "NOVEL_ID":I
    .end local v3    # "ARTICLE_ID":I
    .end local v4    # "READ_RATE":I
    .end local v5    # "NOVEL_NAME":Ljava/lang/String;
    .end local v6    # "ARTICLE_TITLE":Ljava/lang/String;
    .end local v7    # "NOVEL_PIC":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 820
    return-object v0
.end method

.method public getAllBookmarks()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    const/4 v10, 0x0

    .line 403
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v9, "bookmarks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    sget-object v11, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "SELECT * FROM bookmarks WHERE is_recent_read = 0 ORDER BY id DESC"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 406
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 407
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 408
    .local v1, "ID":I
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 409
    .local v2, "NOVEL_ID":I
    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 410
    .local v3, "ARTICLE_ID":I
    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 411
    .local v4, "READ_RATE":I
    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "NOVEL_NAME":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "ARTICLE_TITLE":Ljava/lang/String;
    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, "NOVEL_PIC":Ljava/lang/String;
    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_0

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 416
    .local v8, "IS_RECENT_READ":Ljava/lang/Boolean;
    new-instance v0, Lcom/novel/reader/entity/Bookmark;

    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 417
    .local v0, "bookmark":Lcom/novel/reader/entity/Bookmark;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    .end local v0    # "bookmark":Lcom/novel/reader/entity/Bookmark;
    .end local v8    # "IS_RECENT_READ":Ljava/lang/Boolean;
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 419
    .end local v1    # "ID":I
    .end local v2    # "NOVEL_ID":I
    .end local v3    # "ARTICLE_ID":I
    .end local v4    # "READ_RATE":I
    .end local v5    # "NOVEL_NAME":Ljava/lang/String;
    .end local v6    # "ARTICLE_TITLE":Ljava/lang/String;
    .end local v7    # "NOVEL_PIC":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 420
    return-object v9
.end method

.method public getAllRecentReadBookmarks()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    const/4 v10, 0x0

    .line 381
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v9, "bookmarks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    sget-object v11, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "SELECT * FROM bookmarks WHERE is_recent_read != 0 ORDER BY id DESC"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 384
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 385
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 386
    .local v1, "ID":I
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 387
    .local v2, "NOVEL_ID":I
    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 388
    .local v3, "ARTICLE_ID":I
    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 389
    .local v4, "READ_RATE":I
    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "NOVEL_NAME":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, "ARTICLE_TITLE":Ljava/lang/String;
    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 392
    .local v7, "NOVEL_PIC":Ljava/lang/String;
    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_0

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 394
    .local v8, "IS_RECENT_READ":Ljava/lang/Boolean;
    new-instance v0, Lcom/novel/reader/entity/Bookmark;

    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 395
    .local v0, "bookmark":Lcom/novel/reader/entity/Bookmark;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    .end local v0    # "bookmark":Lcom/novel/reader/entity/Bookmark;
    .end local v8    # "IS_RECENT_READ":Ljava/lang/Boolean;
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 397
    .end local v1    # "ID":I
    .end local v2    # "NOVEL_ID":I
    .end local v3    # "ARTICLE_ID":I
    .end local v4    # "READ_RATE":I
    .end local v5    # "NOVEL_NAME":Ljava/lang/String;
    .end local v6    # "ARTICLE_TITLE":Ljava/lang/String;
    .end local v7    # "NOVEL_PIC":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 398
    return-object v9
.end method

.method public getArticle(I)Lcom/novel/reader/entity/Article;
    .locals 14
    .param p1, "article_id"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 597
    sget-object v11, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT * FROM articles WHERE id = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 598
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 599
    .local v0, "article":Lcom/novel/reader/entity/Article;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 600
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 601
    .local v1, "ID":I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 602
    .local v2, "NOVEL_ID":I
    const/4 v11, 0x2

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, "TEXT":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, "TITLE":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "SUBJECT":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_0

    move v6, v9

    .line 606
    .local v6, "IS_DOWNLOADED":Z
    :goto_1
    const/4 v11, 0x6

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 607
    .local v7, "NUM":I
    new-instance v0, Lcom/novel/reader/entity/Article;

    .end local v0    # "article":Lcom/novel/reader/entity/Article;
    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 608
    .restart local v0    # "article":Lcom/novel/reader/entity/Article;
    goto :goto_0

    .end local v6    # "IS_DOWNLOADED":Z
    .end local v7    # "NUM":I
    :cond_0
    move v6, v10

    .line 605
    goto :goto_1

    .line 609
    .end local v1    # "ID":I
    .end local v2    # "NOVEL_ID":I
    .end local v3    # "TEXT":Ljava/lang/String;
    .end local v4    # "TITLE":Ljava/lang/String;
    .end local v5    # "SUBJECT":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 610
    return-object v0
.end method

.method public getArticleDownloadInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 531
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 555
    :goto_0
    return-object p1

    .line 534
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 536
    .local v1, "hash":Ljava/util/HashMap;
    const-string v4, ""

    .line 537
    .local v4, "idLst":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 538
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Article;

    invoke-virtual {v7}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 539
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v7, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT id,is_downloaded FROM articles WHERE id in ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 543
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 544
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 545
    .local v3, "id":I
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_2

    move v7, v8

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 546
    .local v5, "is_downloaded":Ljava/lang/Boolean;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v5    # "is_downloaded":Ljava/lang/Boolean;
    :cond_2
    move v7, v9

    .line 545
    goto :goto_3

    .line 549
    .end local v3    # "id":I
    :cond_3
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 550
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Article;

    invoke-virtual {v7}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 551
    .local v6, "value":Ljava/lang/Boolean;
    if-eqz v6, :cond_4

    .line 552
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Article;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/novel/reader/entity/Article;->setIsDownloaded(Z)V

    .line 549
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 554
    .end local v6    # "value":Ljava/lang/Boolean;
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getCollectedNovels()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 673
    const/16 v17, 0x0

    .line 674
    .local v17, "cursor":Landroid/database/Cursor;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v19, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    sget-object v10, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "SELECT * FROM novels WHERE is_collected != 0"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 676
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 677
    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 678
    .local v2, "ID":I
    const/4 v10, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "NAME":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, "AUTHOR":Ljava/lang/String;
    const/4 v10, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 681
    .local v5, "DESCRIPTION":Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 682
    .local v6, "PIC":Ljava/lang/String;
    const/4 v10, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 683
    .local v7, "CATEGORY_ID":I
    const/4 v10, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 684
    .local v8, "ARTICLE_NUM":Ljava/lang/String;
    const/4 v10, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 685
    .local v9, "LAST_UPDATE":Ljava/lang/String;
    const/16 v10, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_0

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 686
    .local v16, "IS_SERIALIZING":Ljava/lang/Boolean;
    const/16 v10, 0x9

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 687
    .local v14, "IS_COLLECTED":Ljava/lang/Boolean;
    const/16 v10, 0xa

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_2

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 688
    .local v15, "IS_DOWNLOADED":Ljava/lang/Boolean;
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 689
    .local v20, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v13, 0x0

    .line 691
    .local v13, "LAST_VIEW_DATE":Ljava/util/Date;
    const/16 v10, 0xb

    :try_start_0
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 695
    :goto_4
    new-instance v1, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-direct/range {v1 .. v13}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLjava/util/Date;)V

    .line 696
    .local v1, "novel":Lcom/novel/reader/entity/Novel;
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 685
    .end local v1    # "novel":Lcom/novel/reader/entity/Novel;
    .end local v13    # "LAST_VIEW_DATE":Ljava/util/Date;
    .end local v14    # "IS_COLLECTED":Ljava/lang/Boolean;
    .end local v15    # "IS_DOWNLOADED":Ljava/lang/Boolean;
    .end local v16    # "IS_SERIALIZING":Ljava/lang/Boolean;
    .end local v20    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 686
    .restart local v16    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 687
    .restart local v14    # "IS_COLLECTED":Ljava/lang/Boolean;
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 692
    .restart local v13    # "LAST_VIEW_DATE":Ljava/util/Date;
    .restart local v15    # "IS_DOWNLOADED":Ljava/lang/Boolean;
    .restart local v20    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v18

    .line 693
    .local v18, "e":Ljava/text/ParseException;
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4

    .line 698
    .end local v2    # "ID":I
    .end local v3    # "NAME":Ljava/lang/String;
    .end local v4    # "AUTHOR":Ljava/lang/String;
    .end local v5    # "DESCRIPTION":Ljava/lang/String;
    .end local v6    # "PIC":Ljava/lang/String;
    .end local v7    # "CATEGORY_ID":I
    .end local v8    # "ARTICLE_NUM":Ljava/lang/String;
    .end local v9    # "LAST_UPDATE":Ljava/lang/String;
    .end local v13    # "LAST_VIEW_DATE":Ljava/util/Date;
    .end local v14    # "IS_COLLECTED":Ljava/lang/Boolean;
    .end local v15    # "IS_DOWNLOADED":Ljava/lang/Boolean;
    .end local v16    # "IS_SERIALIZING":Ljava/lang/Boolean;
    .end local v18    # "e":Ljava/text/ParseException;
    .end local v20    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 699
    return-object v19
.end method

.method public declared-synchronized getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 88
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    :cond_0
    sget-object v2, Lcom/novel/db/SQLiteNovel;->DATABASE_FILE_PATH:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 91
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/novel/db/SQLiteNovel;->DATABASE_FILE_PATH:Ljava/io/File;

    const-string v3, "kosnovel"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/novel/db/SQLiteNovel;->DATABASE_FILE_PATH:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kosnovel/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kosnovel.sqlite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    if-nez v2, :cond_2

    .line 96
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v2}, Lcom/novel/db/SQLiteNovel;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_2
    :goto_0
    :try_start_2
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    if-ge v2, v4, :cond_3

    .line 113
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {p0, v2, v3, v4}, Lcom/novel/db/SQLiteNovel;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 114
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 117
    :cond_3
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Lcom/novel/db/SQLiteNovel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 101
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "novels"

    invoke-virtual {p0, v2, v3}, Lcom/novel/db/SQLiteNovel;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v2}, Lcom/novel/db/SQLiteNovel;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 88
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 105
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/novel/db/SQLiteNovel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "novels"

    invoke-virtual {p0, v2, v3}, Lcom/novel/db/SQLiteNovel;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 107
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v2}, Lcom/novel/db/SQLiteNovel;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getDownloadNovels()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    const/16 v16, 0x0

    .line 704
    .local v16, "cursor":Landroid/database/Cursor;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v17, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    sget-object v10, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "SELECT * FROM novels WHERE is_downloaded = 1"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 706
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 707
    const/4 v10, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 708
    .local v2, "ID":I
    const/4 v10, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 709
    .local v3, "NAME":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, "AUTHOR":Ljava/lang/String;
    const/4 v10, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, "DESCRIPTION":Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 712
    .local v6, "PIC":Ljava/lang/String;
    const/4 v10, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 713
    .local v7, "CATEGORY_ID":I
    const/4 v10, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 714
    .local v8, "ARTICLE_NUM":Ljava/lang/String;
    const/4 v10, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 715
    .local v9, "LAST_UPDATE":Ljava/lang/String;
    const/16 v10, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_0

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 716
    .local v15, "IS_SERIALIZING":Ljava/lang/Boolean;
    const/16 v10, 0x9

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 717
    .local v13, "IS_COLLECTED":Ljava/lang/Boolean;
    const/16 v10, 0xa

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_2

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 718
    .local v14, "IS_DOWNLOADED":Ljava/lang/Boolean;
    new-instance v1, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-direct/range {v1 .. v12}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 719
    .local v1, "novel":Lcom/novel/reader/entity/Novel;
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 715
    .end local v1    # "novel":Lcom/novel/reader/entity/Novel;
    .end local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    .end local v14    # "IS_DOWNLOADED":Ljava/lang/Boolean;
    .end local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 716
    .restart local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 717
    .restart local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 721
    .end local v2    # "ID":I
    .end local v3    # "NAME":Ljava/lang/String;
    .end local v4    # "AUTHOR":Ljava/lang/String;
    .end local v5    # "DESCRIPTION":Ljava/lang/String;
    .end local v6    # "PIC":Ljava/lang/String;
    .end local v7    # "CATEGORY_ID":I
    .end local v8    # "ARTICLE_NUM":Ljava/lang/String;
    .end local v9    # "LAST_UPDATE":Ljava/lang/String;
    .end local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    .end local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 722
    return-object v17
.end method

.method public getLastBookmarks(I)Ljava/util/ArrayList;
    .locals 14
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    const/4 v10, 0x0

    .line 425
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v9, "bookmarks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    sget-object v11, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT * FROM bookmarks WHERE is_recent_read = 0 ORDER BY id DESC LIMIT "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 428
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 429
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 430
    .local v1, "ID":I
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 431
    .local v2, "NOVEL_ID":I
    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 432
    .local v3, "ARTICLE_ID":I
    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 433
    .local v4, "READ_RATE":I
    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "NOVEL_NAME":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, "ARTICLE_TITLE":Ljava/lang/String;
    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 436
    .local v7, "NOVEL_PIC":Ljava/lang/String;
    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_0

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 438
    .local v8, "IS_RECENT_READ":Ljava/lang/Boolean;
    new-instance v0, Lcom/novel/reader/entity/Bookmark;

    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 439
    .local v0, "bookmark":Lcom/novel/reader/entity/Bookmark;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    .end local v0    # "bookmark":Lcom/novel/reader/entity/Bookmark;
    .end local v8    # "IS_RECENT_READ":Ljava/lang/Boolean;
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 441
    .end local v1    # "ID":I
    .end local v2    # "NOVEL_ID":I
    .end local v3    # "ARTICLE_ID":I
    .end local v4    # "READ_RATE":I
    .end local v5    # "NOVEL_NAME":Ljava/lang/String;
    .end local v6    # "ARTICLE_TITLE":Ljava/lang/String;
    .end local v7    # "NOVEL_PIC":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 442
    return-object v9
.end method

.method public getLastCollectNovels(I)Ljava/util/ArrayList;
    .locals 18
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    const/16 v16, 0x0

    .line 628
    .local v16, "cursor":Landroid/database/Cursor;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v17, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    sget-object v10, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT * FROM novels WHERE is_collected != 0 ORDER BY id DESC LIMIT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 630
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 631
    const/4 v10, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 632
    .local v2, "ID":I
    const/4 v10, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "NAME":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 634
    .local v4, "AUTHOR":Ljava/lang/String;
    const/4 v10, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 635
    .local v5, "DESCRIPTION":Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 636
    .local v6, "PIC":Ljava/lang/String;
    const/4 v10, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 637
    .local v7, "CATEGORY_ID":I
    const/4 v10, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 638
    .local v8, "ARTICLE_NUM":Ljava/lang/String;
    const/4 v10, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 639
    .local v9, "LAST_UPDATE":Ljava/lang/String;
    const/16 v10, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_0

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 640
    .local v15, "IS_SERIALIZING":Ljava/lang/Boolean;
    const/16 v10, 0x9

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 641
    .local v13, "IS_COLLECTED":Ljava/lang/Boolean;
    const/16 v10, 0xa

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_2

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 642
    .local v14, "IS_DOWNLOADED":Ljava/lang/Boolean;
    new-instance v1, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-direct/range {v1 .. v12}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 643
    .local v1, "novel":Lcom/novel/reader/entity/Novel;
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 639
    .end local v1    # "novel":Lcom/novel/reader/entity/Novel;
    .end local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    .end local v14    # "IS_DOWNLOADED":Ljava/lang/Boolean;
    .end local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 640
    .restart local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 641
    .restart local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 645
    .end local v2    # "ID":I
    .end local v3    # "NAME":Ljava/lang/String;
    .end local v4    # "AUTHOR":Ljava/lang/String;
    .end local v5    # "DESCRIPTION":Ljava/lang/String;
    .end local v6    # "PIC":Ljava/lang/String;
    .end local v7    # "CATEGORY_ID":I
    .end local v8    # "ARTICLE_NUM":Ljava/lang/String;
    .end local v9    # "LAST_UPDATE":Ljava/lang/String;
    .end local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    .end local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 646
    return-object v17
.end method

.method public getLastDownloadNovels(I)Ljava/util/ArrayList;
    .locals 18
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    const/16 v16, 0x0

    .line 651
    .local v16, "cursor":Landroid/database/Cursor;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v17, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    sget-object v10, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT * FROM novels WHERE is_downloaded != 0 ORDER BY id DESC LIMIT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 653
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 654
    const/4 v10, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 655
    .local v2, "ID":I
    const/4 v10, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "NAME":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "AUTHOR":Ljava/lang/String;
    const/4 v10, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 658
    .local v5, "DESCRIPTION":Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 659
    .local v6, "PIC":Ljava/lang/String;
    const/4 v10, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 660
    .local v7, "CATEGORY_ID":I
    const/4 v10, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 661
    .local v8, "ARTICLE_NUM":Ljava/lang/String;
    const/4 v10, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 662
    .local v9, "LAST_UPDATE":Ljava/lang/String;
    const/16 v10, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_0

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 663
    .local v15, "IS_SERIALIZING":Ljava/lang/Boolean;
    const/16 v10, 0x9

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 664
    .local v13, "IS_COLLECTED":Ljava/lang/Boolean;
    const/16 v10, 0xa

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_2

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 665
    .local v14, "IS_DOWNLOADED":Ljava/lang/Boolean;
    new-instance v1, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-direct/range {v1 .. v12}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 666
    .local v1, "novel":Lcom/novel/reader/entity/Novel;
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 662
    .end local v1    # "novel":Lcom/novel/reader/entity/Novel;
    .end local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    .end local v14    # "IS_DOWNLOADED":Ljava/lang/Boolean;
    .end local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 663
    .restart local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 664
    .restart local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 668
    .end local v2    # "ID":I
    .end local v3    # "NAME":Ljava/lang/String;
    .end local v4    # "AUTHOR":Ljava/lang/String;
    .end local v5    # "DESCRIPTION":Ljava/lang/String;
    .end local v6    # "PIC":Ljava/lang/String;
    .end local v7    # "CATEGORY_ID":I
    .end local v8    # "ARTICLE_NUM":Ljava/lang/String;
    .end local v9    # "LAST_UPDATE":Ljava/lang/String;
    .end local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    .end local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 669
    return-object v17
.end method

.method public getLastQueryHistory(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "num"    # I
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 328
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM querys where query like ? ORDER BY _id DESC LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 330
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public getLastRecentBookmarks(I)Ljava/util/ArrayList;
    .locals 14
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    const/4 v10, 0x0

    .line 447
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v9, "bookmarks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    sget-object v11, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT * FROM bookmarks WHERE is_recent_read = 1 ORDER BY id LIMIT "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 450
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 451
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 452
    .local v1, "ID":I
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 453
    .local v2, "NOVEL_ID":I
    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 454
    .local v3, "ARTICLE_ID":I
    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 455
    .local v4, "READ_RATE":I
    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "NOVEL_NAME":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, "ARTICLE_TITLE":Ljava/lang/String;
    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "NOVEL_PIC":Ljava/lang/String;
    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_0

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 460
    .local v8, "IS_RECENT_READ":Ljava/lang/Boolean;
    new-instance v0, Lcom/novel/reader/entity/Bookmark;

    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 461
    .local v0, "bookmark":Lcom/novel/reader/entity/Bookmark;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    .end local v0    # "bookmark":Lcom/novel/reader/entity/Bookmark;
    .end local v8    # "IS_RECENT_READ":Ljava/lang/Boolean;
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 463
    .end local v1    # "ID":I
    .end local v2    # "NOVEL_ID":I
    .end local v3    # "ARTICLE_ID":I
    .end local v4    # "READ_RATE":I
    .end local v5    # "NOVEL_NAME":Ljava/lang/String;
    .end local v6    # "ARTICLE_TITLE":Ljava/lang/String;
    .end local v7    # "NOVEL_PIC":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 464
    return-object v9
.end method

.method public getNovel(I)Lcom/novel/reader/entity/Novel;
    .locals 17
    .param p1, "novel_id"    # I

    .prologue
    .line 509
    sget-object v10, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT * FROM novels WHERE id = \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 510
    .local v16, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 511
    .local v1, "novel":Lcom/novel/reader/entity/Novel;
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 512
    const/4 v10, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 513
    .local v2, "ID":I
    const/4 v10, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "NAME":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "AUTHOR":Ljava/lang/String;
    const/4 v10, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 516
    .local v5, "DESCRIPTION":Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 517
    .local v6, "PIC":Ljava/lang/String;
    const/4 v10, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 518
    .local v7, "CATEGORY_ID":I
    const/4 v10, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 519
    .local v8, "ARTICLE_NUM":Ljava/lang/String;
    const/4 v10, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 520
    .local v9, "LAST_UPDATE":Ljava/lang/String;
    const/16 v10, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_0

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 521
    .local v15, "IS_SERIALIZING":Ljava/lang/Boolean;
    const/16 v10, 0x9

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 522
    .local v13, "IS_COLLECTED":Ljava/lang/Boolean;
    const/16 v10, 0xa

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_2

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 523
    .local v14, "IS_DOWNLOADED":Ljava/lang/Boolean;
    new-instance v1, Lcom/novel/reader/entity/Novel;

    .end local v1    # "novel":Lcom/novel/reader/entity/Novel;
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-direct/range {v1 .. v12}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 524
    .restart local v1    # "novel":Lcom/novel/reader/entity/Novel;
    goto :goto_0

    .line 520
    .end local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    .end local v14    # "IS_DOWNLOADED":Ljava/lang/Boolean;
    .end local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 521
    .restart local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 522
    .restart local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 525
    .end local v2    # "ID":I
    .end local v3    # "NAME":Ljava/lang/String;
    .end local v4    # "AUTHOR":Ljava/lang/String;
    .end local v5    # "DESCRIPTION":Ljava/lang/String;
    .end local v6    # "PIC":Ljava/lang/String;
    .end local v7    # "CATEGORY_ID":I
    .end local v8    # "ARTICLE_NUM":Ljava/lang/String;
    .end local v9    # "LAST_UPDATE":Ljava/lang/String;
    .end local v13    # "IS_COLLECTED":Ljava/lang/Boolean;
    .end local v15    # "IS_SERIALIZING":Ljava/lang/Boolean;
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 526
    return-object v1
.end method

.method public getNovelArticles(IZ)Ljava/util/ArrayList;
    .locals 12
    .param p1, "novel_id"    # I
    .param p2, "isOrderUp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    const/4 v9, 0x0

    .line 560
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v8, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    if-eqz p2, :cond_0

    .line 562
    sget-object v3, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT id,novel_id,title,subject,is_downloaded,num FROM articles WHERE novel_id = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' order by num ASC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 568
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 569
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 570
    .local v1, "ID":I
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 571
    .local v2, "NOVEL_ID":I
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "TITLE":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 573
    .local v5, "SUBJECT":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v6, 0x1

    .line 574
    .local v6, "IS_DOWNLOADED":Z
    :goto_1
    const/4 v3, 0x5

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 575
    .local v7, "NUM":I
    new-instance v0, Lcom/novel/reader/entity/Article;

    const-string v3, ""

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 576
    .local v0, "article":Lcom/novel/reader/entity/Article;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 565
    .end local v0    # "article":Lcom/novel/reader/entity/Article;
    .end local v1    # "ID":I
    .end local v2    # "NOVEL_ID":I
    .end local v4    # "TITLE":Ljava/lang/String;
    .end local v5    # "SUBJECT":Ljava/lang/String;
    .end local v6    # "IS_DOWNLOADED":Z
    .end local v7    # "NUM":I
    :cond_0
    sget-object v3, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT id,novel_id,title,subject,is_downloaded,num FROM articles WHERE novel_id = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' ORDER BY num DESC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 573
    .restart local v1    # "ID":I
    .restart local v2    # "NOVEL_ID":I
    .restart local v4    # "TITLE":Ljava/lang/String;
    .restart local v5    # "SUBJECT":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 578
    .end local v1    # "ID":I
    .end local v2    # "NOVEL_ID":I
    .end local v4    # "TITLE":Ljava/lang/String;
    .end local v5    # "SUBJECT":Ljava/lang/String;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 579
    return-object v8
.end method

.method public getNovelBookmark(I)Lcom/novel/reader/entity/Bookmark;
    .locals 13
    .param p1, "novel_id"    # I

    .prologue
    .line 772
    const/4 v9, 0x0

    .line 773
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 774
    .local v0, "bookmark":Lcom/novel/reader/entity/Bookmark;
    sget-object v10, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT * FROM bookmarks where novel_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and is_recent_read = 1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 776
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 777
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 778
    .local v1, "ID":I
    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 779
    .local v2, "NOVEL_ID":I
    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 780
    .local v3, "ARTICLE_ID":I
    const/4 v10, 0x3

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 781
    .local v4, "READ_RATE":I
    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 782
    .local v5, "NOVEL_NAME":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 783
    .local v6, "ARTICLE_TITLE":Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 784
    .local v7, "NOVEL_PIC":Ljava/lang/String;
    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_0

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 786
    .local v8, "IS_RECENT_READ":Ljava/lang/Boolean;
    new-instance v0, Lcom/novel/reader/entity/Bookmark;

    .end local v0    # "bookmark":Lcom/novel/reader/entity/Bookmark;
    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 787
    .restart local v0    # "bookmark":Lcom/novel/reader/entity/Bookmark;
    goto :goto_0

    .line 784
    .end local v8    # "IS_RECENT_READ":Ljava/lang/Boolean;
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 788
    .end local v1    # "ID":I
    .end local v2    # "NOVEL_ID":I
    .end local v3    # "ARTICLE_ID":I
    .end local v4    # "READ_RATE":I
    .end local v5    # "NOVEL_NAME":Ljava/lang/String;
    .end local v6    # "ARTICLE_TITLE":Ljava/lang/String;
    .end local v7    # "NOVEL_PIC":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 789
    return-object v0
.end method

.method public insertArticle(Lcom/novel/reader/entity/Article;)J
    .locals 4
    .param p1, "article"    # Lcom/novel/reader/entity/Article;

    .prologue
    .line 615
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 616
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v1, "novel_id"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v1, "text"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v1, "subject"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v1, "is_downloaded"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->isDownload()Z

    move-result v2

    invoke-static {v2}, Lcom/novel/db/SQLiteNovel;->getSQLiteBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string v1, "num"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "articles"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public insertBookmark(Lcom/novel/reader/entity/Bookmark;)J
    .locals 4
    .param p1, "bookmark"    # Lcom/novel/reader/entity/Bookmark;

    .prologue
    .line 338
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 339
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "novel_id"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getNovelId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string v1, "article_id"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getArticleId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v1, "read_rate"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getReadRate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string v1, "novel_name"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v1, "article_title"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "novel_pic"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getNovelPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "is_recent_read"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->isRecentRead()Z

    move-result v2

    invoke-static {v2}, Lcom/novel/db/SQLiteNovel;->getSQLiteBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "bookmarks"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public insertNovel(Lcom/novel/reader/entity/Novel;)J
    .locals 4
    .param p1, "novel"    # Lcom/novel/reader/entity/Novel;

    .prologue
    .line 727
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 728
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v1, "author"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v1, "pic"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v1, "category_id"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    const-string v1, "article_num"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v1, "last_update"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "is_serializing"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->isSerializing()Z

    move-result v2

    invoke-static {v2}, Lcom/novel/db/SQLiteNovel;->getSQLiteBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    const-string v1, "is_collected"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->isCollected()Z

    move-result v2

    invoke-static {v2}, Lcom/novel/db/SQLiteNovel;->getSQLiteBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    const-string v1, "is_downloaded"

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->isDownloaded()Z

    move-result v2

    invoke-static {v2}, Lcom/novel/db/SQLiteNovel;->getSQLiteBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "novels"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public insertQueryHistory(Ljava/lang/String;)J
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 315
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM querys ORDER BY _id DESC LIMIT 1"

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 316
    .local v1, "lastCursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 318
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 319
    .local v0, "args":Landroid/content/ContentValues;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 320
    const-string v2, "_id"

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    :goto_0
    const-string v2, "query"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "querys"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2

    .line 322
    :cond_0
    const-string v2, "_id"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public isArticleExists(I)Z
    .locals 5
    .param p1, "articleId"    # I

    .prologue
    .line 583
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select 1 from articles where id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 584
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 585
    .local v1, "exists":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 586
    return v1

    .line 584
    .end local v1    # "exists":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNovelCollected(I)Ljava/lang/Boolean;
    .locals 5
    .param p1, "novel_id"    # I

    .prologue
    .line 751
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select 1 from novels where id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and is_collected = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 752
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 753
    .local v1, "exists":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 754
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 752
    .end local v1    # "exists":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNovelDownloaded(I)Ljava/lang/Boolean;
    .locals 5
    .param p1, "novel_id"    # I

    .prologue
    .line 758
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select 1 from novels where id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and is_downloaded = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 759
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 760
    .local v1, "exists":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 761
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 759
    .end local v1    # "exists":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNovelExists(I)Z
    .locals 5
    .param p1, "novelId"    # I

    .prologue
    .line 590
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select 1 from novels where id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 591
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 592
    .local v1, "exists":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 593
    return v1

    .line 591
    .end local v1    # "exists":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3
    .param p1, "mDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select DISTINCT tbl_name from sqlite_master where tbl_name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 175
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 176
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    const/4 v1, 0x1

    .line 183
    :goto_0
    return v1

    .line 180
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 183
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 227
    const-string v0, "CREATE TABLE IF NOT EXISTS novels (id INTEGER PRIMARY KEY,name TEXT NOT NULL,author TEXT NOT NULL,description TEXT NOT NULL,pic TEXT NOT NULL,category_id INTEGER NOT NULL,article_num TEXT NOT NULL,last_update TEXT NOT NULL,is_serializing INTEGER NOT NULL,is_collected INTEGER NOT NULL,is_downloaded INTEGER NOT NULL,last_view_date DATETIME default CURRENT_TIMESTAMP);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    const-string v0, "CREATE TABLE IF NOT EXISTS articles (id INTEGER PRIMARY KEY,novel_id INTEGER NOT NULL,text TEXT NOT NULL,title TEXT NOT NULL,subject TEXT NOT NULL,is_downloaded INTEGER NOT NULL,num INTEGER default 0,FOREIGN KEY(novel_id) REFERENCES novels(id) ON UPDATE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    const-string v0, "CREATE TABLE IF NOT EXISTS bookmarks (id INTEGER PRIMARY KEY,novel_id INTEGER NOT NULL,article_id INTEGER NOT NULL,read_rate INTEGER NOT NULL,novel_name TEXT NOT NULL,article_title TEXT NOT NULL,novel_pic TEXT NOT NULL,is_recent_read INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    const-string v0, "CREATE TABLE IF NOT EXISTS querys (_id INTEGER PRIMARY KEY,query TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 122
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/novel/db/SQLiteNovel;->alterArticleTableAddNum(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/novel/db/SQLiteNovel;->alterNovelTableAddLastViewDate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    :cond_0
    const/4 v0, 0x7

    if-ge p2, v0, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lcom/novel/db/SQLiteNovel;->createHistoryTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    :cond_1
    return-void
.end method

.method public removeNovelFromCollected(Lcom/novel/reader/entity/Novel;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "novel"    # Lcom/novel/reader/entity/Novel;

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/novel/reader/entity/Novel;->setIsCollected(Z)V

    .line 794
    invoke-virtual {p0, p1}, Lcom/novel/db/SQLiteNovel;->updateNovel(Lcom/novel/reader/entity/Novel;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public removeNovelFromDownload(Lcom/novel/reader/entity/Novel;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "novel"    # Lcom/novel/reader/entity/Novel;

    .prologue
    .line 798
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/novel/reader/entity/Novel;->setIsDownload(Z)V

    .line 799
    invoke-virtual {p0, p1}, Lcom/novel/db/SQLiteNovel;->updateNovel(Lcom/novel/reader/entity/Novel;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public resetDB()Z
    .locals 6

    .prologue
    .line 188
    :try_start_0
    iget-object v4, p0, Lcom/novel/db/SQLiteNovel;->ctx:Landroid/content/Context;

    const-string v5, "kosnovel.sqlite"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 189
    invoke-virtual {p0}, Lcom/novel/db/SQLiteNovel;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sput-object v4, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 190
    iget-object v4, p0, Lcom/novel/db/SQLiteNovel;->ctx:Landroid/content/Context;

    const-string v5, "kosnovel.sqlite"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 191
    .local v1, "currentDB":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "kosnovel"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 194
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "kosnovel.sqlite"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .local v3, "sdcardDB":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    const/4 v4, 0x1

    .line 199
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "currentDB":Ljava/io/File;
    .end local v3    # "sdcardDB":Ljava/io/File;
    :goto_0
    return v4

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public updateArticle(Lcom/novel/reader/entity/Article;)Z
    .locals 8
    .param p1, "article"    # Lcom/novel/reader/entity/Article;

    .prologue
    const/4 v7, 0x1

    .line 501
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE articles SET `text` = ?, `is_downloaded` = ? WHERE `articles`.`id` = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->isDownload()Z

    move-result v5

    invoke-static {v5}, Lcom/novel/db/SQLiteNovel;->getSQLiteBoolean(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 501
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 503
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 504
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 505
    return v7
.end method

.method public updateBookmark(Lcom/novel/reader/entity/Bookmark;)Z
    .locals 8
    .param p1, "bookmark"    # Lcom/novel/reader/entity/Bookmark;

    .prologue
    const/4 v7, 0x1

    .line 369
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE bookmarks SET `novel_id` = ?, `article_id` = ?, `read_rate` = ? , `novel_name` = ?, `article_title` = ? WHERE `bookmarks`.`id` = ?"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getNovelId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getArticleId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getReadRate()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 372
    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/novel/reader/entity/Bookmark;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 369
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 374
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 375
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    return v7
.end method

.method public updateNovel(Lcom/novel/reader/entity/Novel;)Z
    .locals 8
    .param p1, "novel"    # Lcom/novel/reader/entity/Novel;

    .prologue
    const/4 v7, 0x1

    .line 489
    sget-object v1, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE novels SET `article_num` = ?, `last_update` = ?, `is_serializing` = ? , `is_collected` = ? , `is_downloaded` = ? WHERE `novels`.`id` = ?"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 492
    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->isSerializing()Z

    move-result v6

    invoke-static {v6}, Lcom/novel/db/SQLiteNovel;->getSQLiteBoolean(Z)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->isCollected()Z

    move-result v6

    invoke-static {v6}, Lcom/novel/db/SQLiteNovel;->getSQLiteBoolean(Z)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->isDownloaded()Z

    move-result v6

    invoke-static {v6}, Lcom/novel/db/SQLiteNovel;->getSQLiteBoolean(Z)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 490
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 495
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 496
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 497
    return v7
.end method

.method public updateNovelLastViewDate(I)V
    .locals 8
    .param p1, "novelId"    # I

    .prologue
    .line 825
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 827
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    sget-object v2, Lcom/novel/db/SQLiteNovel;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE novels SET `last_view_date` = ? WHERE `novels`.`id` = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 829
    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 827
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 830
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 831
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 832
    return-void
.end method
