.class public Lio/realm/internal/TableQuery;
.super Ljava/lang/Object;
.source "TableQuery.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field protected DEBUG:Z

.field private final context:Lio/realm/internal/Context;

.field protected nativePtr:J

.field private queryValidated:Z

.field protected final table:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lio/realm/internal/TableQuery;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/TableQuery;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/Context;Lio/realm/internal/Table;J)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->DEBUG:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 40
    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "++++++ new TableQuery, ptr= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    :cond_0
    iput-object p1, p0, Lio/realm/internal/TableQuery;->context:Lio/realm/internal/Context;

    .line 44
    iput-object p2, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    .line 45
    iput-wide p3, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    .line 46
    invoke-virtual {p1, p0}, Lio/realm/internal/Context;->addReference(Lio/realm/internal/NativeObject;)V

    .line 47
    return-void
.end method

.method private native nativeAverageDouble(JJJJJ)D
.end method

.method private native nativeAverageFloat(JJJJJ)D
.end method

.method private native nativeAverageInt(JJJJJ)D
.end method

.method private native nativeBeginsWith(J[JLjava/lang/String;Z)V
.end method

.method private native nativeBetween(J[JDD)V
.end method

.method private native nativeBetween(J[JFF)V
.end method

.method private native nativeBetween(J[JJJ)V
.end method

.method private native nativeBetweenTimestamp(J[JJJ)V
.end method

.method private native nativeContains(J[JLjava/lang/String;Z)V
.end method

.method private native nativeCount(JJJJ)J
.end method

.method private native nativeEndGroup(J)V
.end method

.method private native nativeEndsWith(J[JLjava/lang/String;Z)V
.end method

.method private native nativeEqual(J[JD)V
.end method

.method private native nativeEqual(J[JF)V
.end method

.method private native nativeEqual(J[JJ)V
.end method

.method private native nativeEqual(J[JLjava/lang/String;Z)V
.end method

.method private native nativeEqual(J[JZ)V
.end method

.method private native nativeEqual(J[J[B)V
.end method

.method private native nativeEqualTimestamp(J[JJ)V
.end method

.method private native nativeFind(JJ)J
.end method

.method private native nativeFindAll(JJJJ)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeGreater(J[JD)V
.end method

.method private native nativeGreater(J[JF)V
.end method

.method private native nativeGreater(J[JJ)V
.end method

.method private native nativeGreaterEqual(J[JD)V
.end method

.method private native nativeGreaterEqual(J[JF)V
.end method

.method private native nativeGreaterEqual(J[JJ)V
.end method

.method private native nativeGreaterEqualTimestamp(J[JJ)V
.end method

.method private native nativeGreaterTimestamp(J[JJ)V
.end method

.method private native nativeGroup(J)V
.end method

.method private native nativeHandoverQuery(JJ)J
.end method

.method private static native nativeImportHandoverRowIntoSharedGroup(JJ)J
.end method

.method private native nativeIsEmpty(J[J)V
.end method

.method private native nativeIsNotNull(J[J)V
.end method

.method private native nativeIsNull(J[J)V
.end method

.method private native nativeLess(J[JD)V
.end method

.method private native nativeLess(J[JF)V
.end method

.method private native nativeLess(J[JJ)V
.end method

.method private native nativeLessEqual(J[JD)V
.end method

.method private native nativeLessEqual(J[JF)V
.end method

.method private native nativeLessEqual(J[JJ)V
.end method

.method private native nativeLessEqualTimestamp(J[JJ)V
.end method

.method private native nativeLessTimestamp(J[JJ)V
.end method

.method private native nativeLike(J[JLjava/lang/String;Z)V
.end method

.method private native nativeMaximumDouble(JJJJJ)Ljava/lang/Double;
.end method

.method private native nativeMaximumFloat(JJJJJ)Ljava/lang/Float;
.end method

.method private native nativeMaximumInt(JJJJJ)Ljava/lang/Long;
.end method

.method private native nativeMaximumTimestamp(JJJJJ)Ljava/lang/Long;
.end method

.method private native nativeMinimumDouble(JJJJJ)Ljava/lang/Double;
.end method

.method private native nativeMinimumFloat(JJJJJ)Ljava/lang/Float;
.end method

.method private native nativeMinimumInt(JJJJJ)Ljava/lang/Long;
.end method

.method private native nativeMinimumTimestamp(JJJJJ)Ljava/lang/Long;
.end method

.method private native nativeNot(J)V
.end method

.method private native nativeNotEqual(J[JD)V
.end method

.method private native nativeNotEqual(J[JF)V
.end method

.method private native nativeNotEqual(J[JJ)V
.end method

.method private native nativeNotEqual(J[JLjava/lang/String;Z)V
.end method

.method private native nativeNotEqual(J[J[B)V
.end method

.method private native nativeNotEqualTimestamp(J[JJ)V
.end method

.method private native nativeOr(J)V
.end method

.method private native nativeRemove(J)J
.end method

.method private native nativeSumDouble(JJJJJ)D
.end method

.method private native nativeSumFloat(JJJJJ)D
.end method

.method private native nativeSumInt(JJJJJ)J
.end method

.method private native nativeValidateQuery(J)Ljava/lang/String;
.end method


# virtual methods
.method public beginsWith([JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;
    .locals 7

    .prologue
    .line 348
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p3}, Lio/realm/Case;->getValue()Z

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableQuery;->nativeBeginsWith(J[JLjava/lang/String;Z)V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 350
    return-object p0
.end method

.method public count()J
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    .line 618
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 619
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lio/realm/internal/TableQuery;->nativeCount(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public equalTo([JJ)Lio/realm/internal/TableQuery;
    .locals 6

    .prologue
    .line 105
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeEqual(J[JJ)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 107
    return-object p0
.end method

.method public equalTo([JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;
    .locals 7

    .prologue
    .line 324
    iget-wide v2, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p3}, Lio/realm/Case;->getValue()Z

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/TableQuery;->nativeEqual(J[JLjava/lang/String;Z)V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 326
    return-object p0
.end method

.method public find()J
    .locals 4

    .prologue
    .line 417
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 418
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/TableQuery;->nativeFind(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .prologue
    .line 56
    sget-wide v0, Lio/realm/internal/TableQuery;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    return-wide v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    return-object v0
.end method

.method public greaterThan([JLjava/util/Date;)Lio/realm/internal/TableQuery;
    .locals 6

    .prologue
    .line 265
    if-nez p2, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Date value in query criteria must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeGreaterTimestamp(J[JJ)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 269
    return-object p0
.end method

.method public isNotNull([J)Lio/realm/internal/TableQuery;
    .locals 2

    .prologue
    .line 604
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lio/realm/internal/TableQuery;->nativeIsNotNull(J[J)V

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 606
    return-object p0
.end method

.method public isNull([J)Lio/realm/internal/TableQuery;
    .locals 2

    .prologue
    .line 598
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lio/realm/internal/TableQuery;->nativeIsNull(J[J)V

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 600
    return-object p0
.end method

.method public lessThan([JLjava/util/Date;)Lio/realm/internal/TableQuery;
    .locals 6

    .prologue
    .line 281
    if-nez p2, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Date value in query criteria must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeLessTimestamp(J[JJ)V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 285
    return-object p0
.end method

.method public notEqualTo([JJ)Lio/realm/internal/TableQuery;
    .locals 6

    .prologue
    .line 111
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeNotEqual(J[JJ)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 113
    return-object p0
.end method

.method validateQuery()V
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    if-nez v0, :cond_0

    .line 68
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeValidateQuery(J)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 74
    :cond_0
    return-void

    .line 72
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
