.class final Lcom/creativemobi/engine/v;
.super Ljava/lang/Object;
.source "ProLeagueView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/creativemobi/engine/bd;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/bd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/creativemobi/engine/v;->b:Lcom/creativemobi/engine/bd;

    iput-object p2, p0, Lcom/creativemobi/engine/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/creativemobi/engine/v;->b:Lcom/creativemobi/engine/bd;

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    iget-object v1, p0, Lcom/creativemobi/engine/v;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/creativemobi/engine/bl;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 49
    return-void
.end method
