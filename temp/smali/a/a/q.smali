.class public La/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:La/a/q;

.field public static final b:La/a/q;

.field public static final c:La/a/q;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/q;

    const-string v1, "To"

    invoke-direct {v0, v1}, La/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/q;->a:La/a/q;

    new-instance v0, La/a/q;

    const-string v1, "Cc"

    invoke-direct {v0, v1}, La/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/q;->b:La/a/q;

    new-instance v0, La/a/q;

    const-string v1, "Bcc"

    invoke-direct {v0, v1}, La/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/q;->c:La/a/q;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/q;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/q;->d:Ljava/lang/String;

    return-object v0
.end method
