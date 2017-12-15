.class final Lcom/creativemobi/DragRacing/billing/e;
.super Ljava/lang/Object;
.source "PurchaseObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/billing/i;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:I

.field private synthetic e:J

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Lcom/creativemobi/DragRacing/billing/c;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/billing/c;Lcom/creativemobi/DragRacing/billing/i;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/e;->g:Lcom/creativemobi/DragRacing/billing/c;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/billing/e;->a:Lcom/creativemobi/DragRacing/billing/i;

    iput-object p3, p0, Lcom/creativemobi/DragRacing/billing/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/creativemobi/DragRacing/billing/e;->c:Ljava/lang/String;

    iput p5, p0, Lcom/creativemobi/DragRacing/billing/e;->d:I

    iput-wide p6, p0, Lcom/creativemobi/DragRacing/billing/e;->e:J

    iput-object p8, p0, Lcom/creativemobi/DragRacing/billing/e;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/e;->g:Lcom/creativemobi/DragRacing/billing/c;

    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/e;->a:Lcom/creativemobi/DragRacing/billing/i;

    iget-object v2, p0, Lcom/creativemobi/DragRacing/billing/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/creativemobi/DragRacing/billing/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/DragRacing/billing/c;->a(Lcom/creativemobi/DragRacing/billing/i;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method
