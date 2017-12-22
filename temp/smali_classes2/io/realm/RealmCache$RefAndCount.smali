.class Lio/realm/RealmCache$RefAndCount;
.super Ljava/lang/Object;
.source "RealmCache.java"


# instance fields
.field private globalCount:I

.field private final localCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final localRealm:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/realm/BaseRealm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/realm/RealmCache$RefAndCount;->localRealm:Ljava/lang/ThreadLocal;

    .line 55
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/realm/RealmCache$RefAndCount;->localCount:Ljava/lang/ThreadLocal;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/RealmCache$1;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lio/realm/RealmCache$RefAndCount;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/realm/RealmCache$RefAndCount;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return v0
.end method

.method static synthetic access$108(Lio/realm/RealmCache$RefAndCount;)I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return v0
.end method

.method static synthetic access$110(Lio/realm/RealmCache$RefAndCount;)I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return v0
.end method

.method static synthetic access$200(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/realm/RealmCache$RefAndCount;->localRealm:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$300(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/realm/RealmCache$RefAndCount;->localCount:Ljava/lang/ThreadLocal;

    return-object v0
.end method
