.class public Lio/realm/RealmQuery;
.super Ljava/lang/Object;
.source "RealmQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private linkView:Lio/realm/internal/LinkView;

.field private query:Lio/realm/internal/TableQuery;

.field private realm:Lio/realm/BaseRealm;

.field private schema:Lio/realm/RealmObjectSchema;

.field private table:Lio/realm/internal/Table;


# direct methods
.method private constructor <init>(Lio/realm/Realm;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 123
    iput-object p2, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 124
    iget-object v0, p1, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 125
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    iget-object v0, v0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    iput-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmQuery;->linkView:Lio/realm/internal/LinkView;

    .line 127
    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->where()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    .line 128
    return-void
.end method

.method public static createQuery(Lio/realm/Realm;Ljava/lang/Class;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lio/realm/RealmQuery;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/Realm;Ljava/lang/Class;)V

    return-object v0
.end method

.method private createRealmResults(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;Z)Lio/realm/RealmResults;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/TableQuery;",
            "Lio/realm/internal/SortDescriptor;",
            "Lio/realm/internal/SortDescriptor;",
            "Z)",
            "Lio/realm/RealmResults",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1968
    new-instance v1, Lio/realm/internal/Collection;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-direct {v1, v0, p1, p2, p3}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)V

    .line 1969
    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1970
    new-instance v0, Lio/realm/RealmResults;

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Collection;Ljava/lang/String;)V

    .line 1974
    :goto_0
    if-eqz p4, :cond_0

    .line 1975
    invoke-virtual {v0}, Lio/realm/RealmResults;->load()Z

    .line 1977
    :cond_0
    return-object v0

    .line 1972
    :cond_1
    new-instance v0, Lio/realm/RealmResults;

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v3}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Collection;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 347
    if-nez p2, :cond_0

    .line 348
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0}, Lio/realm/internal/TableQuery;->isNull([J)Lio/realm/internal/TableQuery;

    .line 352
    :goto_0
    return-object p0

    .line 350
    :cond_0
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lio/realm/internal/TableQuery;->equalTo([JJ)Lio/realm/internal/TableQuery;

    goto :goto_0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 259
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0, p2, p3}, Lio/realm/internal/TableQuery;->equalTo([JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    .line 260
    return-object p0
.end method

.method private getSourceRowIndexForFirstObject()J
    .locals 2

    .prologue
    .line 1981
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->find()J

    move-result-wide v0

    return-wide v0
.end method

.method private isDynamicQuery()Z
    .locals 1

    .prologue
    .line 1842
    iget-object v0, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public beginsWith(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1339
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->beginsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public beginsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1352
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1354
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 1355
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0, p2, p3}, Lio/realm/internal/TableQuery;->beginsWith([JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    .line 1356
    return-object p0
.end method

.method public count()J
    .locals 2

    .prologue
    .line 1719
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1721
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 342
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 239
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public findAll()Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1733
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1735
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lio/realm/RealmQuery;->createRealmResults(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;Z)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public findFirst()Lio/realm/RealmModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1905
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1907
    invoke-direct {p0}, Lio/realm/RealmQuery;->getSourceRowIndexForFirstObject()J

    move-result-wide v0

    .line 1908
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1909
    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object v0

    .line 1912
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public greaterThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 968
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 970
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 971
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0, p2}, Lio/realm/internal/TableQuery;->greaterThan([JLjava/util/Date;)Lio/realm/internal/TableQuery;

    .line 972
    return-object p0
.end method

.method public lessThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1130
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 1131
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0, p2}, Lio/realm/internal/TableQuery;->lessThan([JLjava/util/Date;)Lio/realm/internal/TableQuery;

    .line 1132
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 786
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 787
    if-nez p2, :cond_0

    .line 788
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0}, Lio/realm/internal/TableQuery;->isNotNull([J)Lio/realm/internal/TableQuery;

    .line 792
    :goto_0
    return-object p0

    .line 790
    :cond_0
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lio/realm/internal/TableQuery;->notEqualTo([JJ)Lio/realm/internal/TableQuery;

    goto :goto_0
.end method
