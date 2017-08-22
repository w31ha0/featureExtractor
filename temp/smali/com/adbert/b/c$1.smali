.class Lcom/adbert/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/c;-><init>(Landroid/content/Context;Lcom/adbert/a/a/a;ILcom/adbert/a/c/a;)V
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
    .line 60
    iput-object p1, p0, Lcom/adbert/b/c$1;->a:Lcom/adbert/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adbert/b/c$1;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->a(Lcom/adbert/b/c;)Lcom/adbert/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/a/c/a;->closeAdView()V

    .line 65
    return-void
.end method
