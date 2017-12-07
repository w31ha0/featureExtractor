.class public final Lc/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lc/a/a/a/b;


# instance fields
.field private volatile a:Z

.field private c:Lc/a/a/a/b/c;

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/a/a/a/b;

    invoke-direct {v0}, Lc/a/a/a/b;-><init>()V

    sput-object v0, Lc/a/a/a/b;->b:Lc/a/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/a/b;->a:Z

    new-instance v0, Lc/a/a/a/a;

    invoke-direct {v0, p0}, Lc/a/a/a/a;-><init>(Lc/a/a/a/b;)V

    iput-object v0, p0, Lc/a/a/a/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lc/a/a/a/b/c;
    .locals 1

    sget-object v0, Lc/a/a/a/b;->b:Lc/a/a/a/b;

    iget-object v0, v0, Lc/a/a/a/b;->c:Lc/a/a/a/b/c;

    return-object v0
.end method

.method public static a(Lc/a/a/a/b/c;)V
    .locals 1

    sget-object v0, Lc/a/a/a/b;->b:Lc/a/a/a/b;

    iput-object p0, v0, Lc/a/a/a/b;->c:Lc/a/a/a/b/c;

    return-void
.end method

.method public static b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lc/a/a/a/b;->b:Lc/a/a/a/b;

    iget-object v0, v0, Lc/a/a/a/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lc/a/a/a/b;->b:Lc/a/a/a/b;

    iget-boolean v0, v0, Lc/a/a/a/b;->a:Z

    return v0
.end method
