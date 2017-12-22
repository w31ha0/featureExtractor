.class public Lio/realm/internal/SortDescriptor;
.super Ljava/lang/Object;
.source "SortDescriptor.java"


# annotations
.annotation build Lio/realm/internal/KeepMember;
.end annotation


# static fields
.field static final validFieldTypesForDistinct:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field static final validFieldTypesForSort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ascendings:[Z

.field private final columnIndices:[[J

.field private final table:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Lio/realm/RealmFieldType;

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    aput-object v1, v0, v6

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/internal/SortDescriptor;->validFieldTypesForSort:Ljava/util/List;

    .line 43
    new-array v0, v7, [Lio/realm/RealmFieldType;

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/internal/SortDescriptor;->validFieldTypesForDistinct:Ljava/util/List;

    return-void
.end method

.method private getTablePtr()J
    .locals 2
    .annotation build Lio/realm/internal/KeepMember;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lio/realm/internal/SortDescriptor;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method getAscendings()[Z
    .locals 1
    .annotation build Lio/realm/internal/KeepMember;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lio/realm/internal/SortDescriptor;->ascendings:[Z

    return-object v0
.end method

.method getColumnIndices()[[J
    .locals 1
    .annotation build Lio/realm/internal/KeepMember;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lio/realm/internal/SortDescriptor;->columnIndices:[[J

    return-object v0
.end method
