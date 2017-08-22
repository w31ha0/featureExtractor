.class public Lcom/adbert/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/a/b$b;,
        Lcom/adbert/a/b$c;,
        Lcom/adbert/a/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/adbert/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/adbert/a/b;

    invoke-direct {v0}, Lcom/adbert/a/b;-><init>()V

    sput-object v0, Lcom/adbert/a/b;->a:Lcom/adbert/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a()Lcom/adbert/a/b;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/adbert/a/b;->a:Lcom/adbert/a/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/adbert/a/c;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/adbert/a/c;

    invoke-direct {v0, p1}, Lcom/adbert/a/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/adbert/a/c;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adbert/a/b$c;)Lcom/adbert/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adbert/a/b$c;)Lcom/adbert/a/c;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/adbert/a/c;

    invoke-direct {v0, p1}, Lcom/adbert/a/c;-><init>(Landroid/content/Context;)V

    .line 73
    if-eqz p4, :cond_0

    .line 74
    new-instance v1, Lcom/adbert/a/b$1;

    invoke-direct {v1, p0, p4}, Lcom/adbert/a/b$1;-><init>(Lcom/adbert/a/b;Lcom/adbert/a/b$c;)V

    invoke-virtual {v0, v1}, Lcom/adbert/a/c;->a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;

    .line 86
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/adbert/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object v0
.end method
