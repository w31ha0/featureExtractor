.class public Lcom/novel/reader/api/NovelAPI;
.super Ljava/lang/Object;
.source "NovelAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/api/NovelAPI$BackupInfo;,
        Lcom/novel/reader/api/NovelAPI$RestoreResult;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field static final GAME_HOST:Ljava/lang/String; = "http://apply.inapp.tw"

.field static final READHOST:Ljava/lang/String; = "http://readapi.novelking.cc"

.field public static final TAG:Ljava/lang/String; = "NOVEL_API"

.field static final WRITEHOST:Ljava/lang/String; = "http://api.novelking.cc"

.field public static apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/GameAPP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BackupToServer(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 20
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1171
    invoke-static/range {p1 .. p1}, Lcom/novel/reader/api/NovelAPI;->getCollectedNovels(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1172
    .local v4, "collectNovels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    invoke-static/range {p1 .. p1}, Lcom/novel/reader/api/NovelAPI;->getDownloadedNovels(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1174
    .local v7, "downloadNovels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, ""

    .line 1175
    .local v3, "collect":Ljava/lang/String;
    const-string v6, ""

    .line 1176
    .local v6, "download":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/novel/reader/entity/Novel;

    .line 1177
    .local v11, "n":Lcom/novel/reader/entity/Novel;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1178
    goto :goto_0

    .line 1179
    .end local v11    # "n":Lcom/novel/reader/entity/Novel;
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/novel/reader/entity/Novel;

    .line 1180
    .restart local v11    # "n":Lcom/novel/reader/entity/Novel;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1181
    goto :goto_1

    .line 1183
    .end local v11    # "n":Lcom/novel/reader/entity/Novel;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "email="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "&collect_novels="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "&download_novels="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1184
    .local v2, "POST_PARAMS":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1185
    .local v12, "obj":Ljava/net/URL;
    const/4 v5, 0x0

    .line 1187
    .local v5, "con":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    const-string v17, "http://api.novelking.cc/api/v1/users/update_novel"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1188
    .end local v12    # "obj":Ljava/net/URL;
    .local v13, "obj":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 1189
    const-string v17, "PUT"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1192
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1193
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 1194
    .local v14, "os":Ljava/io/OutputStream;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1195
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 1196
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 1199
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 1200
    .local v16, "responseCode":I
    const-string v17, "NOVEL_API"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PUT Response Code :: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1203
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1205
    .local v9, "in":Ljava/io/BufferedReader;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 1207
    .local v15, "response":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "inputLine":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 1208
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1219
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v10    # "inputLine":Ljava/lang/String;
    .end local v14    # "os":Ljava/io/OutputStream;
    .end local v15    # "response":Ljava/lang/StringBuffer;
    .end local v16    # "responseCode":I
    :catch_0
    move-exception v8

    move-object v12, v13

    .line 1220
    .end local v13    # "obj":Ljava/net/URL;
    .local v8, "e":Ljava/io/IOException;
    .restart local v12    # "obj":Ljava/net/URL;
    :goto_3
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 1223
    const/16 v17, 0x0

    .end local v8    # "e":Ljava/io/IOException;
    :goto_4
    return v17

    .line 1210
    .end local v12    # "obj":Ljava/net/URL;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "inputLine":Ljava/lang/String;
    .restart local v13    # "obj":Ljava/net/URL;
    .restart local v14    # "os":Ljava/io/OutputStream;
    .restart local v15    # "response":Ljava/lang/StringBuffer;
    .restart local v16    # "responseCode":I
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 1213
    const-string v17, "NOVEL_API"

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/16 v17, 0x1

    move-object v12, v13

    .end local v13    # "obj":Ljava/net/URL;
    .restart local v12    # "obj":Ljava/net/URL;
    goto :goto_4

    .line 1216
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v10    # "inputLine":Ljava/lang/String;
    .end local v12    # "obj":Ljava/net/URL;
    .end local v15    # "response":Ljava/lang/StringBuffer;
    .restart local v13    # "obj":Ljava/net/URL;
    :cond_3
    const-string v17, "NOVEL_API"

    const-string v18, "POST request did not work."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1217
    const/16 v17, 0x0

    move-object v12, v13

    .end local v13    # "obj":Ljava/net/URL;
    .restart local v12    # "obj":Ljava/net/URL;
    goto :goto_4

    .line 1219
    .end local v14    # "os":Ljava/io/OutputStream;
    .end local v16    # "responseCode":I
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method public static collecNovel(Lcom/novel/reader/entity/Novel;Landroid/content/Context;)Z
    .locals 4
    .param p0, "novel"    # Lcom/novel/reader/entity/Novel;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 280
    invoke-virtual {p0, v3}, Lcom/novel/reader/entity/Novel;->setIsCollected(Z)V

    .line 281
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {p0}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/novel/db/SQLiteNovel;->isNovelDownloaded(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/novel/reader/entity/Novel;->setIsDownload(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/novel/db/SQLiteNovel;->isNovelExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->updateNovel(Lcom/novel/reader/entity/Novel;)Z

    .line 288
    :goto_0
    new-instance v1, Lcom/novel/reader/api/NovelAPI$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/novel/reader/api/NovelAPI$1;-><init>(Lcom/novel/reader/entity/Novel;Landroid/content/Context;Lcom/novel/db/SQLiteNovel;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 294
    invoke-virtual {v1, v2}, Lcom/novel/reader/api/NovelAPI$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    return v3

    .line 286
    :cond_0
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->insertNovel(Lcom/novel/reader/entity/Novel;)J

    goto :goto_0
.end method

.method public static createRecentBookmark(Lcom/novel/reader/entity/Bookmark;Landroid/content/Context;)Lcom/novel/reader/entity/Bookmark;
    .locals 6
    .param p0, "bookmark"    # Lcom/novel/reader/entity/Bookmark;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {p0}, Lcom/novel/reader/entity/Bookmark;->getNovelId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/novel/db/SQLiteNovel;->getNovelBookmark(I)Lcom/novel/reader/entity/Bookmark;

    move-result-object v2

    .line 170
    .local v2, "lastNovelBookmark":Lcom/novel/reader/entity/Bookmark;
    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v0, v2}, Lcom/novel/db/SQLiteNovel;->deleteBookmark(Lcom/novel/reader/entity/Bookmark;)Z

    .line 172
    :cond_0
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->insertBookmark(Lcom/novel/reader/entity/Bookmark;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 173
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/novel/reader/entity/Bookmark;->setId(I)V

    .line 174
    return-object p0
.end method

.method public static deleteBookmark(Lcom/novel/reader/entity/Bookmark;Landroid/content/Context;)V
    .locals 1
    .param p0, "bookmark"    # Lcom/novel/reader/entity/Bookmark;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->deleteBookmark(Lcom/novel/reader/entity/Bookmark;)Z

    .line 153
    return-void
.end method

.method public static deleteBookmarks(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "bookmarks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->deleteBookmarks(Ljava/util/ArrayList;)Z

    .line 158
    return-void
.end method

.method public static downloadArticle(ILcom/novel/reader/entity/Article;Landroid/content/Context;)Z
    .locals 11
    .param p0, "novelId"    # I
    .param p1, "article"    # Lcom/novel/reader/entity/Article;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 208
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p2}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->isNovelExists(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v8

    invoke-static {v8, p2, v6, v7}, Lcom/novel/reader/api/NovelAPI;->downloadOrUpdateNovelInfo(ILandroid/content/Context;ZZ)Z

    .line 218
    :cond_0
    :goto_0
    const-string v8, "GET"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/api/v1/articles/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 245
    :goto_1
    return v6

    .line 212
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->isNovelDownloaded(I)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 213
    invoke-static {p0, p2}, Lcom/novel/reader/api/NovelAPI;->getNovel(ILandroid/content/Context;)Lcom/novel/reader/entity/Novel;

    move-result-object v4

    .line 214
    .local v4, "novel":Lcom/novel/reader/entity/Novel;
    invoke-virtual {v4, v7}, Lcom/novel/reader/entity/Novel;->setIsDownload(Z)V

    .line 215
    invoke-virtual {v0, v4}, Lcom/novel/db/SQLiteNovel;->updateNovel(Lcom/novel/reader/entity/Novel;)Z

    goto :goto_0

    .line 224
    .end local v4    # "novel":Lcom/novel/reader/entity/Novel;
    .restart local v2    # "message":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    .local v3, "nObject":Lorg/json/JSONObject;
    const-string v8, "text"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/novel/reader/entity/Article;->setText(Ljava/lang/String;)V

    .line 227
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/novel/reader/entity/Article;->setIsDownloaded(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    const/4 v3, 0x0

    .line 237
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/novel/db/SQLiteNovel;->isArticleExists(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 240
    invoke-virtual {v0, p1}, Lcom/novel/db/SQLiteNovel;->updateArticle(Lcom/novel/reader/entity/Article;)Z

    .line 244
    :goto_2
    const-string v6, ""

    invoke-virtual {p1, v6}, Lcom/novel/reader/entity/Article;->setText(Ljava/lang/String;)V

    move v6, v7

    .line 245
    goto :goto_1

    .line 231
    .end local v3    # "nObject":Lorg/json/JSONObject;
    .end local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "nObject":Lorg/json/JSONObject;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, p1}, Lcom/novel/db/SQLiteNovel;->insertArticle(Lcom/novel/reader/entity/Article;)J

    goto :goto_2
.end method

.method public static downloadArticles(ILjava/util/ArrayList;Landroid/content/Context;)Z
    .locals 2
    .param p0, "novelId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 203
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Article;

    invoke-static {p0, v1, p2}, Lcom/novel/reader/api/NovelAPI;->downloadArticle(ILcom/novel/reader/entity/Article;Landroid/content/Context;)Z

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static downloadOrUpdateNovelInfo(ILandroid/content/Context;ZZ)Z
    .locals 19
    .param p0, "novelId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCollected"    # Z
    .param p3, "isDownload"    # Z

    .prologue
    .line 301
    const/16 v16, 0x0

    .line 304
    .local v16, "n":Lcom/novel/reader/entity/Novel;
    const-string v11, "GET"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/api/v1/novels/"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, "/detail_for_save.json"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v11, v12, v0}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    .line 305
    .local v15, "message":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 306
    const/4 v11, 0x0

    move-object/from16 v1, v16

    .line 357
    .end local v16    # "n":Lcom/novel/reader/entity/Novel;
    .local v1, "n":Lcom/novel/reader/entity/Novel;
    :goto_0
    return v11

    .line 310
    .end local v1    # "n":Lcom/novel/reader/entity/Novel;
    .restart local v16    # "n":Lcom/novel/reader/entity/Novel;
    :cond_0
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 311
    .local v17, "nObject":Lorg/json/JSONObject;
    const-string v11, "novel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 313
    const-string v11, "id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 314
    .local v2, "novel_id":I
    const-string v11, "article_num"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, "articleNum":Ljava/lang/String;
    const-string v11, "author"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "author":Ljava/lang/String;
    const-string v11, "is_serializing"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 317
    .local v10, "isSerializing":Z
    const-string v11, "last_update"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 318
    .local v9, "lastUpdate":Ljava/lang/String;
    const-string v11, "name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "name":Ljava/lang/String;
    const-string v11, "pic"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, "pic":Ljava/lang/String;
    const-string v11, "description"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "description":Ljava/lang/String;
    const-string v11, "category_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 323
    .local v7, "category_id":I
    new-instance v1, Lcom/novel/reader/entity/Novel;

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v16    # "n":Lcom/novel/reader/entity/Novel;
    .restart local v1    # "n":Lcom/novel/reader/entity/Novel;
    new-instance v13, Lcom/novel/db/SQLiteNovel;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 344
    .local v13, "db":Lcom/novel/db/SQLiteNovel;
    move/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/novel/db/SQLiteNovel;->isNovelExists(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 345
    invoke-virtual {v13, v1}, Lcom/novel/db/SQLiteNovel;->updateNovel(Lcom/novel/reader/entity/Novel;)Z

    .line 357
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "n":Lcom/novel/reader/entity/Novel;
    .end local v2    # "novel_id":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "author":Ljava/lang/String;
    .end local v5    # "description":Ljava/lang/String;
    .end local v6    # "pic":Ljava/lang/String;
    .end local v7    # "category_id":I
    .end local v8    # "articleNum":Ljava/lang/String;
    .end local v9    # "lastUpdate":Ljava/lang/String;
    .end local v10    # "isSerializing":Z
    .end local v13    # "db":Lcom/novel/db/SQLiteNovel;
    .end local v17    # "nObject":Lorg/json/JSONObject;
    .restart local v16    # "n":Lcom/novel/reader/entity/Novel;
    :catch_0
    move-exception v14

    .line 338
    .local v14, "e":Lorg/json/JSONException;
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    .line 339
    const/4 v11, 0x0

    move-object/from16 v1, v16

    .end local v16    # "n":Lcom/novel/reader/entity/Novel;
    .restart local v1    # "n":Lcom/novel/reader/entity/Novel;
    goto :goto_0

    .line 347
    .end local v14    # "e":Lorg/json/JSONException;
    .restart local v2    # "novel_id":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "author":Ljava/lang/String;
    .restart local v5    # "description":Ljava/lang/String;
    .restart local v6    # "pic":Ljava/lang/String;
    .restart local v7    # "category_id":I
    .restart local v8    # "articleNum":Ljava/lang/String;
    .restart local v9    # "lastUpdate":Ljava/lang/String;
    .restart local v10    # "isSerializing":Z
    .restart local v13    # "db":Lcom/novel/db/SQLiteNovel;
    .restart local v17    # "nObject":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v13, v1}, Lcom/novel/db/SQLiteNovel;->insertNovel(Lcom/novel/reader/entity/Novel;)J

    goto :goto_1
.end method

.method public static findBookMarkByArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Bookmark;
    .locals 2
    .param p0, "article"    # Lcom/novel/reader/entity/Article;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 984
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 985
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->findBookMarkByArticle(Lcom/novel/reader/entity/Article;)Lcom/novel/reader/entity/Bookmark;

    move-result-object v1

    return-object v1
.end method

.method public static getAllBookmarks(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v1, p0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 135
    .local v1, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v1}, Lcom/novel/db/SQLiteNovel;->getAllBookmarks()Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    .local v0, "bookmarks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    return-object v0
.end method

.method public static getAllRecentReadBookmarks(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v1, p0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v1}, Lcom/novel/db/SQLiteNovel;->getAllRecentReadBookmarks()Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    .local v0, "bookmarks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    return-object v0
.end method

.method public static getAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/GameAPP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v7, Lcom/novel/reader/api/NovelAPI;->apps:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 90
    sget-object v7, Lcom/novel/reader/api/NovelAPI;->apps:Ljava/util/ArrayList;

    .line 100
    :goto_0
    return-object v7

    .line 91
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/novel/reader/api/NovelAPI;->apps:Ljava/util/ArrayList;

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "id":I
    const/4 v2, 0x0

    .line 94
    .local v2, "appid":I
    const-string v3, "AndroMoney\u7406\u8ca1\u5e6b\u624b"

    .line 95
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v4, "\u69ae\u7372Google Play \u9996\u9801\u4e4b\u6548\u7387\u6392\u884c\u5de5\u5177\u4e4b\u8a18\u5e33\u7406\u8ca1APP\u3002"

    .line 96
    .local v4, "description":Ljava/lang/String;
    const-string v5, ""

    .line 97
    .local v5, "imageUrl":Ljava/lang/String;
    const-string v6, "https://play.google.com/store/apps/details?id=com.kpmoney.android"

    .line 98
    .local v6, "appStoreUrl":Ljava/lang/String;
    new-instance v0, Lcom/novel/reader/entity/GameAPP;

    invoke-direct/range {v0 .. v6}, Lcom/novel/reader/entity/GameAPP;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v0, "app":Lcom/novel/reader/entity/GameAPP;
    sget-object v7, Lcom/novel/reader/api/NovelAPI;->apps:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v7, Lcom/novel/reader/api/NovelAPI;->apps:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static getArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Article;
    .locals 10
    .param p0, "article"    # Lcom/novel/reader/entity/Article;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 402
    new-instance v1, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v1, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 403
    .local v1, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/novel/db/SQLiteNovel;->isArticleExists(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/novel/db/SQLiteNovel;->getArticle(I)Lcom/novel/reader/entity/Article;

    move-result-object v0

    .line 405
    .local v0, "articleFromDB":Lcom/novel/reader/entity/Article;
    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/novel/reader/entity/Article;->setText(Ljava/lang/String;)V

    .line 429
    .end local v0    # "articleFromDB":Lcom/novel/reader/entity/Article;
    :cond_0
    :goto_0
    return-object v0

    .line 411
    :cond_1
    const-string v7, "GET"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/api/v1/articles/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "message":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 417
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    .local v4, "nObject":Lorg/json/JSONObject;
    const-string v7, "text"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "text":Ljava/lang/String;
    const-string v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 420
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/novel/reader/entity/Article;->setText(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0, v6}, Lcom/novel/reader/entity/Article;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 429
    goto :goto_0

    .line 423
    .end local v4    # "nObject":Lorg/json/JSONObject;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 425
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    invoke-static {}, Lcom/novel/reader/entity/Category;->getCategories()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getCategoryFinish(II)Ljava/util/ArrayList;
    .locals 6
    .param p0, "categoryId"    # I
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 698
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels/category_finish.json?category_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 703
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCategoryHotNovels(II)Ljava/util/ArrayList;
    .locals 6
    .param p0, "category_id"    # I
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels/category_hot.json?category_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 617
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCategoryLatestNovels(II)Ljava/util/ArrayList;
    .locals 6
    .param p0, "category_id"    # I
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 668
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels/category_latest_update.json?category_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 673
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCategoryNovels(II)Ljava/util/ArrayList;
    .locals 6
    .param p0, "category_id"    # I
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels.json?category_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 663
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCategoryRecommendNovels(II)Ljava/util/ArrayList;
    .locals 6
    .param p0, "category_id"    # I
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 592
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels/category_recommend.json?category_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 597
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCategoryThisWeekHotNovels(II)Ljava/util/ArrayList;
    .locals 6
    .param p0, "category_id"    # I
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 602
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels/category_this_week_hot.json?category_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 607
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getClassicActionNovels()Ljava/util/ArrayList;
    .locals 5
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
    const/4 v2, 0x0

    .line 582
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    const-string v4, "/api/v1/novels/classic_action.json"

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getClassicNovels()Ljava/util/ArrayList;
    .locals 5
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
    const/4 v2, 0x0

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    const-string v4, "/api/v1/novels/classic.json"

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 576
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCollectNovelsInfoFromServer(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "collectNovels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const/4 v5, 0x0

    .line 361
    const-string v1, ""

    .line 362
    .local v1, "idLst":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v4}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 365
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 367
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v3, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v4, "GET"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/api/v1/novels/collect_novels_info.json?novels_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_2

    move-object v4, v5

    .line 379
    :goto_1
    return-object v4

    .line 372
    :cond_2
    invoke-static {v2, v3}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 374
    if-eqz v3, :cond_3

    .line 375
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 376
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/novel/reader/entity/Novel;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v5}, Lcom/novel/reader/entity/Novel;->getLastViewDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/novel/reader/entity/Novel;->setLastViewDate(Ljava/util/Date;)V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v4, v3

    .line 379
    goto :goto_1
.end method

.method public static getCollectedNovels(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0}, Lcom/novel/db/SQLiteNovel;->getCollectedNovels()Ljava/util/ArrayList;

    move-result-object v1

    .line 180
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    return-object v1
.end method

.method public static getDownloadedNovelArticles(IZLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "novelId"    # I
    .param p1, "isOrderUp"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    new-instance v1, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v1, p2}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 502
    .local v1, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v1, p0, p1}, Lcom/novel/db/SQLiteNovel;->getNovelArticles(IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 503
    .local v0, "as":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    return-object v0
.end method

.method public static getDownloadedNovels(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0}, Lcom/novel/db/SQLiteNovel;->getDownloadNovels()Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    return-object v1
.end method

.method public static getHotNovels(I)Ljava/util/ArrayList;
    .locals 6
    .param p0, "myPage"    # I
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
    const/4 v2, 0x0

    .line 560
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels/hot.json?page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLatestUpdateNovels(I)Ljava/util/ArrayList;
    .locals 6
    .param p0, "page"    # I
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
    const/4 v2, 0x0

    .line 678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels/all_novel_update.json?&page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 683
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 11
    .param p0, "requestMethod"    # Ljava/lang/String;
    .param p1, "apiPath"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 714
    :try_start_0
    new-instance v6, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://readapi.novelking.cc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 716
    .local v6, "url":Ljava/net/URL;
    const-string v8, "NOVEL_API"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 719
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 721
    const-string v8, "Content-Type"

    const-string v9, "application/json;charset=utf-8"

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v8, "POST"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 723
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 724
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 725
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 727
    const-string v8, "POST"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 730
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 732
    .local v3, "outputStream":Ljava/io/OutputStream;
    const-string v8, "post message"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write([B)V

    .line 735
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 736
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 739
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 740
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v2, "lines":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "tempStr":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 745
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    .line 748
    :cond_2
    const-string v8, "NOVEL_API"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 751
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 753
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 759
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "lines":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "tempStr":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :goto_1
    return-object v7

    .line 754
    :catch_0
    move-exception v1

    .line 755
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 757
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 758
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "requestMethod"    # Ljava/lang/String;
    .param p1, "apiPath"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "apiUrl"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 766
    if-eqz p3, :cond_2

    .line 767
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 772
    .local v6, "url":Ljava/net/URL;
    :goto_0
    const-string v8, "NOVEL_API"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 775
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 777
    const-string v8, "Content-Type"

    const-string v9, "application/json;charset=utf-8"

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v8, "POST"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 779
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 780
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 781
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 783
    const-string v8, "POST"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 786
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 788
    .local v3, "outputStream":Ljava/io/OutputStream;
    const-string v8, "post message"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write([B)V

    .line 791
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 792
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 795
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 796
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .local v2, "lines":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "tempStr":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 801
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1

    .line 769
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "lines":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "tempStr":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :cond_2
    new-instance v6, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://readapi.novelking.cc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v6    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 804
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "lines":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "tempStr":Ljava/lang/String;
    :cond_3
    const-string v8, "MOVIE_API"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 807
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 809
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 815
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "lines":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "tempStr":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :goto_2
    return-object v7

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    .line 813
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 814
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getNewUploadedNovels(I)Ljava/util/ArrayList;
    .locals 6
    .param p0, "page"    # I
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
    const/4 v2, 0x0

    .line 688
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels/new_uploaded_novels.json?&page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 693
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getNewestVersionAndLink(Lcom/novel/reader/MainActivity$UpdateInfo;)V
    .locals 6
    .param p0, "info"    # Lcom/novel/reader/MainActivity$UpdateInfo;

    .prologue
    .line 1055
    const-string v3, "GET"

    const-string v4, "/api/version_check.json"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1060
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v2, "nObject":Lorg/json/JSONObject;
    const-string v3, "update_link"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/novel/reader/MainActivity$UpdateInfo;->updateLink:Ljava/lang/String;

    .line 1062
    const-string v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/novel/reader/MainActivity$UpdateInfo;->newest_version:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1064
    .end local v2    # "nObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNextArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Article;
    .locals 14
    .param p0, "orginArticle"    # Lcom/novel/reader/entity/Article;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    new-instance v9, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v9, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 468
    .local v9, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v0

    const/4 v5, 0x1

    invoke-virtual {v9, v0, v5}, Lcom/novel/db/SQLiteNovel;->getNovelArticles(IZ)Ljava/util/ArrayList;

    move-result-object v8

    .line 470
    .local v8, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v11, v0, :cond_1

    .line 471
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 472
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-static {v0, p1}, Lcom/novel/reader/api/NovelAPI;->getArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Article;

    move-result-object v0

    .line 495
    :goto_1
    return-object v0

    .line 470
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 476
    :cond_1
    const-string v0, "GET"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/api/v1/articles/next_article_by_num.json?novel_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&article_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 477
    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&num="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getNum()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 476
    invoke-static {v0, v5, v6}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    .line 478
    .local v12, "message":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 479
    const/4 v0, 0x0

    goto :goto_1

    .line 484
    :cond_2
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 485
    .local v13, "nObject":Lorg/json/JSONObject;
    const-string v0, "text"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "text":Ljava/lang/String;
    const-string v0, "id"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 487
    .local v1, "id":I
    const-string v0, "novel_id"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 488
    .local v2, "novelId":I
    const-string v0, "title"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "title":Ljava/lang/String;
    const-string v0, "num"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 490
    .local v7, "num":I
    new-instance v0, Lcom/novel/reader/entity/Article;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 492
    .end local v1    # "id":I
    .end local v2    # "novelId":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v7    # "num":I
    .end local v13    # "nObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 494
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    .line 495
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getNovel(ILandroid/content/Context;)Lcom/novel/reader/entity/Novel;
    .locals 18
    .param p0, "novelId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 623
    new-instance v13, Lcom/novel/db/SQLiteNovel;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 624
    .local v13, "db":Lcom/novel/db/SQLiteNovel;
    move/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/novel/db/SQLiteNovel;->isNovelExists(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 625
    move/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/novel/db/SQLiteNovel;->getNovel(I)Lcom/novel/reader/entity/Novel;

    move-result-object v1

    .line 654
    :goto_0
    return-object v1

    .line 628
    :cond_0
    const/4 v1, 0x0

    .line 629
    .local v1, "n":Lcom/novel/reader/entity/Novel;
    const-string v11, "GET"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/api/v1/novels/"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v17, ".json"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    .line 630
    .local v15, "message":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 631
    const/4 v1, 0x0

    goto :goto_0

    .line 635
    :cond_1
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 636
    .local v16, "nObject":Lorg/json/JSONObject;
    const-string v11, "id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 637
    .local v2, "id":I
    const-string v11, "article_num"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 638
    .local v8, "articleNum":Ljava/lang/String;
    const-string v11, "author"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 639
    .local v4, "author":Ljava/lang/String;
    const-string v11, "is_serializing"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 640
    .local v10, "isSerializing":Z
    const-string v11, "last_update"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 641
    .local v9, "lastUpdate":Ljava/lang/String;
    const-string v11, "name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "name":Ljava/lang/String;
    const-string v11, "pic"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 643
    .local v6, "pic":Ljava/lang/String;
    const-string v11, "description"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, "description":Ljava/lang/String;
    const-string v11, "category_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 646
    .local v7, "category_id":I
    new-instance v1, Lcom/novel/reader/entity/Novel;

    .end local v1    # "n":Lcom/novel/reader/entity/Novel;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "n":Lcom/novel/reader/entity/Novel;
    goto/16 :goto_0

    .line 648
    .end local v1    # "n":Lcom/novel/reader/entity/Novel;
    .end local v2    # "id":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "author":Ljava/lang/String;
    .end local v5    # "description":Ljava/lang/String;
    .end local v6    # "pic":Ljava/lang/String;
    .end local v7    # "category_id":I
    .end local v8    # "articleNum":Ljava/lang/String;
    .end local v9    # "lastUpdate":Ljava/lang/String;
    .end local v10    # "isSerializing":Z
    .end local v16    # "nObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v14

    .line 650
    .local v14, "e":Lorg/json/JSONException;
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    .line 651
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static getNovelArticles(IZLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "novelId"    # I
    .param p1, "isOrderUp"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v9, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/api/v1/articles/articles_by_num.json?novel_id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "&order="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    .line 509
    .local v13, "message":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 510
    const/4 v3, 0x0

    .line 535
    :goto_0
    return-object v3

    .line 514
    :cond_0
    :try_start_0
    new-instance v14, Lorg/json/JSONArray;

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 515
    .local v14, "novelsArray":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v12, v3, :cond_1

    .line 517
    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 518
    .local v2, "id":I
    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "subject"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 519
    .local v6, "subject":Ljava/lang/String;
    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 520
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "num"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 522
    .local v8, "num":I
    new-instance v1, Lcom/novel/reader/entity/Article;

    const-string v4, ""

    const/4 v7, 0x0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 523
    .local v1, "a":Lcom/novel/reader/entity/Article;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 526
    .end local v1    # "a":Lcom/novel/reader/entity/Article;
    .end local v2    # "id":I
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "subject":Ljava/lang/String;
    .end local v8    # "num":I
    .end local v12    # "i":I
    .end local v14    # "novelsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v11

    .line 527
    .local v11, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 528
    const/4 v3, 0x0

    goto :goto_0

    .line 532
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v12    # "i":I
    .restart local v14    # "novelsArray":Lorg/json/JSONArray;
    :cond_1
    new-instance v10, Lcom/novel/db/SQLiteNovel;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 533
    .local v10, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v10, v9}, Lcom/novel/db/SQLiteNovel;->getArticleDownloadInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    move-object v3, v9

    .line 535
    goto :goto_0
.end method

.method public static getNovelBookmark(ILandroid/content/Context;)Lcom/novel/reader/entity/Bookmark;
    .locals 2
    .param p0, "novel_id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    new-instance v1, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v1, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 141
    .local v1, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v1, p0}, Lcom/novel/db/SQLiteNovel;->getNovelBookmark(I)Lcom/novel/reader/entity/Bookmark;

    move-result-object v0

    .line 142
    .local v0, "bookmark":Lcom/novel/reader/entity/Bookmark;
    return-object v0
.end method

.method public static getPreviousArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Article;
    .locals 14
    .param p0, "orginArticle"    # Lcom/novel/reader/entity/Article;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    new-instance v9, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v9, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 434
    .local v9, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v0

    const/4 v5, 0x1

    invoke-virtual {v9, v0, v5}, Lcom/novel/db/SQLiteNovel;->getNovelArticles(IZ)Ljava/util/ArrayList;

    move-result-object v8

    .line 436
    .local v8, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 437
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 438
    add-int/lit8 v0, v11, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-static {v0, p1}, Lcom/novel/reader/api/NovelAPI;->getArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Article;

    move-result-object v0

    .line 461
    :goto_1
    return-object v0

    .line 436
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 442
    :cond_1
    const-string v0, "GET"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/api/v1/articles/previous_article_by_num.json?novel_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&article_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 443
    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&num="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/novel/reader/entity/Article;->getNum()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 442
    invoke-static {v0, v5, v6}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    .line 444
    .local v12, "message":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 445
    const/4 v0, 0x0

    goto :goto_1

    .line 450
    :cond_2
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 451
    .local v13, "nObject":Lorg/json/JSONObject;
    const-string v0, "text"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, "text":Ljava/lang/String;
    const-string v0, "id"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 453
    .local v1, "id":I
    const-string v0, "novel_id"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 454
    .local v2, "novelId":I
    const-string v0, "title"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 455
    .local v4, "title":Ljava/lang/String;
    const-string v0, "num"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 456
    .local v7, "num":I
    new-instance v0, Lcom/novel/reader/entity/Article;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 458
    .end local v1    # "id":I
    .end local v2    # "novelId":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v7    # "num":I
    .end local v13    # "nObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 460
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    .line 461
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getRecommendCategoryNovels(I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "recommendCateoryId"    # I
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
    .line 1044
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v2, "GET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/api/v1/novels/recommend_category_novels.json?recommend_category_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1049
    .end local v1    # "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    :goto_0
    return-object v1

    .restart local v1    # "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRecommendCategoryWithNovels()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 990
    const-string v1, "GET"

    const-string v2, "/api/v1/recommend_categories.json"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 992
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 994
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/novel/reader/api/NovelAPI;->parseRecommendCategory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public static getThisMonthHotNovels(I)Ljava/util/ArrayList;
    .locals 6
    .param p0, "myPage"    # I
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
    const/4 v2, 0x0

    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels/this_month_hot.json?page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 544
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getThisWeekHotNovels(I)Ljava/util/ArrayList;
    .locals 6
    .param p0, "myPage"    # I
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
    const/4 v2, 0x0

    .line 550
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v3, "GET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/novels/this_week_hot.json?page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public static getUserBackupInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/novel/reader/api/NovelAPI$BackupInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 1242
    const-string v7, "GET"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/api/v1/users/back_up_info?email="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 1243
    .local v3, "message":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1244
    new-instance v7, Lcom/novel/reader/api/NovelAPI$BackupInfo;

    const-string/jumbo v8, "\u8b80\u53d6\u5931\u6557"

    const-string/jumbo v9, "\u8b80\u53d6\u5931\u6557"

    const-string/jumbo v10, "\u8b80\u53d6\u5931\u6557"

    invoke-direct {v7, p1, v8, v9, v10}, Lcom/novel/reader/api/NovelAPI$BackupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    :goto_0
    return-object v7

    .line 1248
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v4, "nObject":Lorg/json/JSONObject;
    const-string v7, "email"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1250
    .local v6, "userEmail":Ljava/lang/String;
    const-string v7, "collected_novels"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, "collects":Ljava/lang/String;
    const-string v7, "download_novels"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1252
    .local v1, "downloads":Ljava/lang/String;
    const-string v7, "update"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1254
    .local v5, "updated":Ljava/lang/String;
    new-instance v7, Lcom/novel/reader/api/NovelAPI$BackupInfo;

    invoke-direct {v7, v6, v0, v1, v5}, Lcom/novel/reader/api/NovelAPI$BackupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1255
    .end local v0    # "collects":Ljava/lang/String;
    .end local v1    # "downloads":Ljava/lang/String;
    .end local v4    # "nObject":Lorg/json/JSONObject;
    .end local v5    # "updated":Ljava/lang/String;
    .end local v6    # "userEmail":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1256
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1257
    new-instance v7, Lcom/novel/reader/api/NovelAPI$BackupInfo;

    const-string/jumbo v8, "\u8b80\u53d6\u5931\u6557"

    const-string/jumbo v9, "\u8b80\u53d6\u5931\u6557"

    const-string/jumbo v10, "\u8b80\u53d6\u5931\u6557"

    invoke-direct {v7, p1, v8, v9, v10}, Lcom/novel/reader/api/NovelAPI$BackupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static insertBookmark(Lcom/novel/reader/entity/Bookmark;Landroid/content/Context;)Lcom/novel/reader/entity/Bookmark;
    .locals 4
    .param p0, "bookmark"    # Lcom/novel/reader/entity/Bookmark;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->insertBookmark(Lcom/novel/reader/entity/Bookmark;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 163
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/novel/reader/entity/Bookmark;->setId(I)V

    .line 164
    return-object p0
.end method

.method public static isNovelCollected(Landroid/content/Context;I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "novel_id"    # I

    .prologue
    .line 184
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p1}, Lcom/novel/db/SQLiteNovel;->isNovelCollected(I)Ljava/lang/Boolean;

    move-result-object v1

    .line 186
    .local v1, "isNovelCollected":Ljava/lang/Boolean;
    return-object v1
.end method

.method public static isNovelDownloaded(Landroid/content/Context;I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "novel_id"    # I

    .prologue
    .line 190
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p1}, Lcom/novel/db/SQLiteNovel;->isNovelDownloaded(I)Ljava/lang/Boolean;

    move-result-object v1

    .line 192
    .local v1, "isNovelDownloaded":Ljava/lang/Boolean;
    return-object v1
.end method

.method public static keepNovelLastViewDateIfInDB(ILcom/novel/reader/ArticleActivity;)V
    .locals 2
    .param p0, "novelId"    # I
    .param p1, "articleActivity"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 1036
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 1037
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->isNovelExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->updateNovelLastViewDate(I)V

    .line 1040
    :cond_0
    return-void
.end method

.method private static parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 16
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    :try_start_0
    new-instance v15, Lorg/json/JSONArray;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 823
    .local v15, "novelsArray":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v14, v5, :cond_1

    .line 825
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 826
    .local v2, "id":I
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "article_num"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 823
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 828
    :cond_0
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "article_num"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 829
    .local v8, "articleNum":Ljava/lang/String;
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "author"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 830
    .local v4, "author":Ljava/lang/String;
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "is_serializing"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 831
    .local v10, "isSerializing":Z
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "last_update"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 832
    .local v9, "lastUpdate":Ljava/lang/String;
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "pic"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 835
    .local v6, "pic":Ljava/lang/String;
    new-instance v1, Lcom/novel/reader/entity/Novel;

    const-string v5, ""

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 836
    .local v1, "novel":Lcom/novel/reader/entity/Novel;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 839
    .end local v1    # "novel":Lcom/novel/reader/entity/Novel;
    .end local v2    # "id":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "author":Ljava/lang/String;
    .end local v6    # "pic":Ljava/lang/String;
    .end local v8    # "articleNum":Ljava/lang/String;
    .end local v9    # "lastUpdate":Ljava/lang/String;
    .end local v10    # "isSerializing":Z
    .end local v14    # "i":I
    .end local v15    # "novelsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v13

    .line 840
    .local v13, "e":Lorg/json/JSONException;
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    .line 841
    const/16 p1, 0x0

    .line 843
    .end local v13    # "e":Lorg/json/JSONException;
    .end local p1    # "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    :cond_1
    return-object p1
.end method

.method private static parseRecommendCategory(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 25
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 999
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v15, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Category;>;"
    :try_start_0
    new-instance v16, Lorg/json/JSONArray;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v16, "categoriesArray":Lorg/json/JSONArray;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v7

    move/from16 v0, v20

    if-ge v0, v7, :cond_1

    .line 1005
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 1006
    .local v21, "id":I
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1007
    .local v18, "categoryName":Ljava/lang/String;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .local v23, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "novels"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 1009
    .local v24, "novelsArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_1
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v7

    move/from16 v0, v22

    if-ge v0, v7, :cond_0

    .line 1011
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1012
    .local v4, "novelId":I
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "article_num"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1013
    .local v10, "articleNum":Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "author"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1014
    .local v6, "author":Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "is_serializing"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1015
    .local v12, "isSerializing":Z
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "last_update"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1016
    .local v11, "lastUpdate":Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1017
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "pic"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1018
    .local v8, "pic":Ljava/lang/String;
    new-instance v3, Lcom/novel/reader/entity/Novel;

    const-string v7, ""

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1019
    .local v3, "novel":Lcom/novel/reader/entity/Novel;
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 1022
    .end local v3    # "novel":Lcom/novel/reader/entity/Novel;
    .end local v4    # "novelId":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "author":Ljava/lang/String;
    .end local v8    # "pic":Ljava/lang/String;
    .end local v10    # "articleNum":Ljava/lang/String;
    .end local v11    # "lastUpdate":Ljava/lang/String;
    .end local v12    # "isSerializing":Z
    :cond_0
    new-instance v17, Lcom/novel/reader/entity/Category;

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/novel/reader/entity/Category;-><init>(ILjava/lang/String;)V

    .line 1023
    .local v17, "category":Lcom/novel/reader/entity/Category;
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/novel/reader/entity/Category;->novels:Ljava/util/ArrayList;

    .line 1024
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 1028
    .end local v16    # "categoriesArray":Lorg/json/JSONArray;
    .end local v17    # "category":Lcom/novel/reader/entity/Category;
    .end local v18    # "categoryName":Ljava/lang/String;
    .end local v20    # "i":I
    .end local v21    # "id":I
    .end local v22    # "j":I
    .end local v23    # "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    .end local v24    # "novelsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v19

    .line 1029
    .local v19, "e":Lorg/json/JSONException;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONException;->printStackTrace()V

    .line 1030
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Category;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    .end local v19    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v15
.end method

.method public static removeArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)V
    .locals 1
    .param p0, "article"    # Lcom/novel/reader/entity/Article;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->deleteArticle(Lcom/novel/reader/entity/Article;)Z

    .line 263
    return-void
.end method

.method public static removeArticles(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->deleteArticles(Ljava/util/ArrayList;)Z

    .line 268
    return-void
.end method

.method public static removeNovelFromCollected(Lcom/novel/reader/entity/Novel;Landroid/content/Context;)V
    .locals 1
    .param p0, "novel"    # Lcom/novel/reader/entity/Novel;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->removeNovelFromCollected(Lcom/novel/reader/entity/Novel;)Ljava/lang/Boolean;

    .line 251
    return-void
.end method

.method public static removeNovelFromDownload(Lcom/novel/reader/entity/Novel;Landroid/content/Context;)V
    .locals 4
    .param p0, "novel"    # Lcom/novel/reader/entity/Novel;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    new-instance v1, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v1, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 255
    .local v1, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {p0}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/novel/db/SQLiteNovel;->getNovelArticles(IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 256
    .local v0, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    invoke-virtual {v1, v0}, Lcom/novel/db/SQLiteNovel;->deleteArticles(Ljava/util/ArrayList;)Z

    .line 257
    invoke-virtual {v1, p0}, Lcom/novel/db/SQLiteNovel;->removeNovelFromDownload(Lcom/novel/reader/entity/Novel;)Ljava/lang/Boolean;

    .line 258
    return-void
.end method

.method public static restoreFromUserBackup(Ljava/lang/String;Landroid/content/Context;)Lcom/novel/reader/api/NovelAPI$RestoreResult;
    .locals 26
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1081
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .local v14, "collectNovels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .local v17, "downloadNovels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v6, "GET"

    const/4 v8, 0x0

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "http://readapi.novelking.cc/api/v1/users/get_novels?email="

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v8, v12, v13}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1084
    .local v22, "message":Ljava/lang/String;
    if-nez v22, :cond_0

    .line 1085
    new-instance v6, Lcom/novel/reader/api/NovelAPI$RestoreResult;

    const/4 v8, 0x0

    const-string/jumbo v12, "\u9023\u7dda\u5931\u6557"

    invoke-direct {v6, v8, v12}, Lcom/novel/reader/api/NovelAPI$RestoreResult;-><init>(ZLjava/lang/String;)V

    .line 1166
    :goto_0
    return-object v6

    .line 1089
    :cond_0
    :try_start_0
    new-instance v23, Lorg/json/JSONObject;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v23, "nObject":Lorg/json/JSONObject;
    const-string v6, "collected_novels"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 1091
    .local v15, "collected_novels":Lorg/json/JSONArray;
    const-string v6, "download_novels"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 1093
    .local v18, "downloaded_novels":Lorg/json/JSONArray;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1094
    new-instance v6, Lcom/novel/reader/api/NovelAPI$RestoreResult;

    const/4 v8, 0x0

    const-string/jumbo v12, "\u4f3a\u670d\u5668\u6c92\u6709\u8cc7\u6599, \u8acb\u5148\u5099\u4efd\u81f3\u4f3a\u670d\u5668"

    invoke-direct {v6, v8, v12}, Lcom/novel/reader/api/NovelAPI$RestoreResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1160
    .end local v15    # "collected_novels":Lorg/json/JSONArray;
    .end local v18    # "downloaded_novels":Lorg/json/JSONArray;
    .end local v23    # "nObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v19

    .line 1161
    .local v19, "e":Lorg/json/JSONException;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONException;->printStackTrace()V

    .line 1162
    new-instance v6, Lcom/novel/reader/api/NovelAPI$RestoreResult;

    const/4 v8, 0x0

    const-string/jumbo v12, "\u9023\u7dda\u5931\u6557"

    invoke-direct {v6, v8, v12}, Lcom/novel/reader/api/NovelAPI$RestoreResult;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 1097
    .end local v19    # "e":Lorg/json/JSONException;
    .restart local v15    # "collected_novels":Lorg/json/JSONArray;
    .restart local v18    # "downloaded_novels":Lorg/json/JSONArray;
    .restart local v23    # "nObject":Lorg/json/JSONObject;
    :cond_1
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_3

    .line 1099
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1100
    .local v3, "id":I
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "article_num"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1097
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 1102
    :cond_2
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "article_num"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1103
    .local v9, "articleNum":Ljava/lang/String;
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "author"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1104
    .local v5, "author":Ljava/lang/String;
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "is_serializing"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1105
    .local v11, "isSerializing":Z
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "last_update"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1106
    .local v10, "lastUpdate":Ljava/lang/String;
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1107
    .local v4, "name":Ljava/lang/String;
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "pic"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1109
    .local v7, "pic":Ljava/lang/String;
    new-instance v2, Lcom/novel/reader/entity/Novel;

    const-string v6, ""

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1110
    .local v2, "novel":Lcom/novel/reader/entity/Novel;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1113
    .end local v2    # "novel":Lcom/novel/reader/entity/Novel;
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "author":Ljava/lang/String;
    .end local v7    # "pic":Ljava/lang/String;
    .end local v9    # "articleNum":Ljava/lang/String;
    .end local v10    # "lastUpdate":Ljava/lang/String;
    .end local v11    # "isSerializing":Z
    :cond_3
    const/16 v20, 0x0

    :goto_3
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_5

    .line 1115
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1116
    .restart local v3    # "id":I
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "article_num"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1113
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 1118
    :cond_4
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "article_num"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1119
    .restart local v9    # "articleNum":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "author"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1120
    .restart local v5    # "author":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "is_serializing"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1121
    .restart local v11    # "isSerializing":Z
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "last_update"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1122
    .restart local v10    # "lastUpdate":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1123
    .restart local v4    # "name":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "pic"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1125
    .restart local v7    # "pic":Ljava/lang/String;
    new-instance v2, Lcom/novel/reader/entity/Novel;

    const-string v6, ""

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1126
    .restart local v2    # "novel":Lcom/novel/reader/entity/Novel;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1129
    .end local v2    # "novel":Lcom/novel/reader/entity/Novel;
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "author":Ljava/lang/String;
    .end local v7    # "pic":Ljava/lang/String;
    .end local v9    # "articleNum":Ljava/lang/String;
    .end local v10    # "lastUpdate":Ljava/lang/String;
    .end local v11    # "isSerializing":Z
    :cond_5
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 1131
    .local v24, "novelHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/novel/reader/entity/Novel;>;"
    const/16 v20, 0x0

    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_7

    .line 1132
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    .line 1134
    .restart local v2    # "novel":Lcom/novel/reader/entity/Novel;
    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1135
    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Novel;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/novel/reader/entity/Novel;->setIsCollected(Z)V

    .line 1131
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1137
    :cond_6
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/novel/reader/entity/Novel;->setIsCollected(Z)V

    .line 1138
    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1142
    .end local v2    # "novel":Lcom/novel/reader/entity/Novel;
    :cond_7
    const/16 v20, 0x0

    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_9

    .line 1143
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    .line 1145
    .restart local v2    # "novel":Lcom/novel/reader/entity/Novel;
    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1146
    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Novel;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/novel/reader/entity/Novel;->setIsDownload(Z)V

    .line 1142
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 1148
    :cond_8
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/novel/reader/entity/Novel;->setIsDownload(Z)V

    .line 1149
    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1152
    .end local v2    # "novel":Lcom/novel/reader/entity/Novel;
    :cond_9
    new-instance v16, Lcom/novel/db/SQLiteNovel;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 1153
    .local v16, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual/range {v16 .. v16}, Lcom/novel/db/SQLiteNovel;->deleteAllNovels()Z

    .line 1155
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 1156
    .local v21, "key":Ljava/lang/Integer;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    .line 1157
    .restart local v2    # "novel":Lcom/novel/reader/entity/Novel;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/novel/db/SQLiteNovel;->insertNovel(Lcom/novel/reader/entity/Novel;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    .line 1165
    .end local v2    # "novel":Lcom/novel/reader/entity/Novel;
    .end local v21    # "key":Ljava/lang/Integer;
    :cond_a
    const-string v6, "NOVEL_API"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    new-instance v6, Lcom/novel/reader/api/NovelAPI$RestoreResult;

    const/4 v8, 0x1

    const-string v12, ""

    invoke-direct {v6, v8, v12}, Lcom/novel/reader/api/NovelAPI$RestoreResult;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static searchNovels(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 386
    :try_start_0
    const-string v5, "utf-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 391
    .local v3, "query":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v2, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const-string v5, "GET"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/api/v1/novels/elastic_search.json?search="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&page="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/novel/reader/api/NovelAPI;->getMessageFromServer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 396
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    .end local v3    # "query":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 396
    .end local v0    # "e1":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v2    # "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    .restart local v3    # "query":Ljava/lang/String;
    :cond_0
    invoke-static {v1, v2}, Lcom/novel/reader/api/NovelAPI;->parseNovel(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0
.end method

.method public static sendClickInfo(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appid"    # I

    .prologue
    .line 86
    return-void
.end method

.method public static sendCollectedNovels(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "novels"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 961
    const/4 v0, 0x0

    return v0
.end method

.method public static sendDownloadedNovels(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "novels"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method public static sendNovel(ILjava/lang/String;)Z
    .locals 1
    .param p0, "novel"    # I
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 914
    const/4 v0, 0x0

    return v0
.end method

.method public static sendRegistrationId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p0, "regid"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "platform"    # Ljava/lang/String;

    .prologue
    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public static sendUserEmail(Ljava/lang/String;)Z
    .locals 16
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 847
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "email="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, "POST_PARAMS":Ljava/lang/String;
    const/4 v6, 0x0

    .line 849
    .local v6, "obj":Ljava/net/URL;
    const/4 v2, 0x0

    .line 851
    .local v2, "con":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v11, "http://api.novelking.cc/api/v1/users.json"

    invoke-direct {v7, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 852
    .end local v6    # "obj":Ljava/net/URL;
    .local v7, "obj":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 853
    const-string v11, "POST"

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 856
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 857
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 858
    .local v8, "os":Ljava/io/OutputStream;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/OutputStream;->write([B)V

    .line 859
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 860
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 863
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 864
    .local v10, "responseCode":I
    const-string v11, "NOVEL_API"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "POST Response Code :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/16 v11, 0xc8

    if-ne v10, v11, :cond_1

    .line 867
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 869
    .local v4, "in":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 871
    .local v9, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "inputLine":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 872
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 883
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "inputLine":Ljava/lang/String;
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "response":Ljava/lang/StringBuffer;
    .end local v10    # "responseCode":I
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 884
    .end local v7    # "obj":Ljava/net/URL;
    .local v3, "e":Ljava/io/IOException;
    .restart local v6    # "obj":Ljava/net/URL;
    :goto_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move v11, v13

    .line 887
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    return v11

    .line 874
    .end local v6    # "obj":Ljava/net/URL;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "inputLine":Ljava/lang/String;
    .restart local v7    # "obj":Ljava/net/URL;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "response":Ljava/lang/StringBuffer;
    .restart local v10    # "responseCode":I
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 877
    const-string v11, "NOVEL_API"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .end local v7    # "obj":Ljava/net/URL;
    .restart local v6    # "obj":Ljava/net/URL;
    move v11, v12

    .line 878
    goto :goto_2

    .line 880
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "inputLine":Ljava/lang/String;
    .end local v6    # "obj":Ljava/net/URL;
    .end local v9    # "response":Ljava/lang/StringBuffer;
    .restart local v7    # "obj":Ljava/net/URL;
    :cond_1
    const-string v11, "NOVEL_API"

    const-string v12, "POST request did not work."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .end local v7    # "obj":Ljava/net/URL;
    .restart local v6    # "obj":Ljava/net/URL;
    move v11, v13

    .line 881
    goto :goto_2

    .line 883
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v10    # "responseCode":I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static updateBookmark(Lcom/novel/reader/entity/Bookmark;Landroid/content/Context;)V
    .locals 1
    .param p0, "bookmark"    # Lcom/novel/reader/entity/Bookmark;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v0, p0}, Lcom/novel/db/SQLiteNovel;->updateBookmark(Lcom/novel/reader/entity/Bookmark;)Z

    .line 148
    return-void
.end method

.method public static updateNovelsInfo(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    new-instance v0, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v0, p1}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Novel;

    .line 273
    .local v1, "novel":Lcom/novel/reader/entity/Novel;
    invoke-virtual {v1}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/novel/db/SQLiteNovel;->isNovelDownloaded(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/novel/reader/entity/Novel;->setIsDownload(Z)V

    .line 274
    invoke-virtual {v1}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/novel/db/SQLiteNovel;->isNovelCollected(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/novel/reader/entity/Novel;->setIsCollected(Z)V

    .line 275
    invoke-virtual {v0, v1}, Lcom/novel/db/SQLiteNovel;->updateNovel(Lcom/novel/reader/entity/Novel;)Z

    goto :goto_0

    .line 277
    .end local v1    # "novel":Lcom/novel/reader/entity/Novel;
    :cond_0
    return-void
.end method
