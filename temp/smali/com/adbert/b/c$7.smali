.class Lcom/adbert/b/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/b/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/c;->setEndingCard(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/c;


# direct methods
.method constructor <init>(Lcom/adbert/b/c;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/adbert/b/c$7;->a:Lcom/adbert/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/adbert/b/c$7;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->a(Lcom/adbert/b/c;)Lcom/adbert/a/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adbert/a/c/a;->endingCardAction(I)V

    .line 344
    return-void
.end method
