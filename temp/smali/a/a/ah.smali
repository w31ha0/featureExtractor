.class public final La/a/ah;
.super Ljava/lang/Object;


# static fields
.field public static final a:La/a/ah;

.field public static final b:La/a/ah;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/ah;

    const-string v1, "STORE"

    invoke-direct {v0, v1}, La/a/ah;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/ah;->a:La/a/ah;

    new-instance v0, La/a/ah;

    const-string v1, "TRANSPORT"

    invoke-direct {v0, v1}, La/a/ah;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/ah;->b:La/a/ah;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/ah;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/ah;->c:Ljava/lang/String;

    return-object v0
.end method
