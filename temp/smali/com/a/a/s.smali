.class public Lcom/a/a/s;
.super Ljava/lang/Exception;
.source "VolleyError.java"


# instance fields
.field public final a:Lcom/a/a/i;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/s;->a:Lcom/a/a/i;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/a/a/i;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/a/a/s;->a:Lcom/a/a/i;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/s;->a:Lcom/a/a/i;

    .line 48
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/a/a/s;->b:J

    .line 52
    return-void
.end method
