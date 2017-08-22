.class Lc/Echo$1;
.super Ljava/lang/Object;
.source "Echo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/Echo;->execute(Ljava/lang/String;Lvpadn/c;Lvpadn/p;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lc/Echo;


# direct methods
.method constructor <init>(Lc/Echo;Lvpadn/p;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lc/Echo$1;->c:Lc/Echo;

    iput-object p2, p0, Lc/Echo$1;->a:Lvpadn/p;

    iput-object p3, p0, Lc/Echo$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lc/Echo$1;->a:Lvpadn/p;

    iget-object v1, p0, Lc/Echo$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method
