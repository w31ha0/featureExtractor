.class Lcom/adbert/b/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/a$a;->validReturn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/a$a;


# direct methods
.method constructor <init>(Lcom/adbert/b/a$a;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/adbert/b/a$a$1;->a:Lcom/adbert/b/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adbert/b/a$a$1;->a:Lcom/adbert/b/a$a;

    iget-object v0, v0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->n:Z

    .line 233
    return-void
.end method
