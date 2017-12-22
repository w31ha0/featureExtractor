.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmOfflineMigration;
.super Ljava/lang/Object;
.source "RealmOfflineMigration.java"

# interfaces
.implements Lio/realm/RealmMigration;


# static fields
.field static final OFFLINE_REALM_DB_SCHEMA_VERSION:I = 0x6

.field private static final TAG:Ljava/lang/String; = "RealmOfflineMigration"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public migrate(Lio/realm/DynamicRealm;JJ)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    .line 28
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    .line 30
    cmp-long v0, p2, v8

    if-nez v0, :cond_5

    .line 34
    const-string/jumbo v0, "RealmOfflineMigration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Migrating from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v0, "RealmOfflineMigration"

    const-string/jumbo v1, "Creating RealmIncompleteVideoDetails"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo v0, "RealmIncompleteVideoDetails"

    invoke-virtual {v2, v0}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string/jumbo v1, "playableId"

    const-class v3, Ljava/lang/String;

    new-array v4, v7, [Lio/realm/FieldAttribute;

    .line 38
    invoke-virtual {v0, v1, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string/jumbo v1, "playableId"

    invoke-virtual {v0, v1}, Lio/realm/RealmObjectSchema;->addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string/jumbo v1, "videoType"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v4, v7, [Lio/realm/FieldAttribute;

    .line 39
    invoke-virtual {v0, v1, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    const-string/jumbo v1, "profileId"

    const-class v3, Ljava/lang/String;

    new-array v4, v7, [Lio/realm/FieldAttribute;

    .line 40
    invoke-virtual {v0, v1, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 42
    add-long v0, p2, v8

    .line 45
    :goto_0
    const-wide/16 v4, 0x2

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 47
    const-string/jumbo v3, "RealmOfflineMigration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Migrating from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string/jumbo v3, "RealmOfflineMigration"

    const-string/jumbo v4, "updating season details"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string/jumbo v3, "RealmSeason"

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v3

    const-string/jumbo v4, "label"

    const-string/jumbo v5, "title"

    invoke-virtual {v3, v4, v5}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 51
    add-long/2addr v0, v8

    .line 54
    :cond_0
    const-wide/16 v4, 0x3

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    .line 55
    const-string/jumbo v3, "RealmOfflineMigration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Migrating from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string/jumbo v3, "RealmPlayable"

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v3

    const-string/jumbo v4, "isPreviewProtected"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v6, v7, [Lio/realm/FieldAttribute;

    invoke-virtual {v3, v4, v5, v6}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 57
    add-long/2addr v0, v8

    .line 60
    :cond_1
    const-wide/16 v4, 0x4

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 61
    const-string/jumbo v3, "RealmOfflineMigration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Migrating from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string/jumbo v3, "RealmVideoDetails"

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v3

    const-string/jumbo v4, "isVideo3D"

    invoke-virtual {v3, v4}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 63
    add-long/2addr v0, v8

    .line 66
    :cond_2
    const-wide/16 v4, 0x5

    cmp-long v3, v0, v4

    if-nez v3, :cond_3

    .line 67
    const-string/jumbo v3, "RealmOfflineMigration"

    const-string/jumbo v4, "Migrating from %s (removing star rating)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    const-string/jumbo v3, "RealmVideoDetails"

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v2

    const-string/jumbo v3, "userRating"

    invoke-virtual {v2, v3}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v2

    const-string/jumbo v3, "predictedRating"

    invoke-virtual {v2, v3}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 69
    add-long/2addr v0, v8

    .line 73
    :cond_3
    cmp-long v2, v0, p4

    if-eqz v2, :cond_4

    .line 74
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "you missed a migration. oldVersion is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and should be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_4
    const-string/jumbo v2, "RealmOfflineMigration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Migrating to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    :cond_5
    move-wide v0, p2

    goto/16 :goto_0
.end method
