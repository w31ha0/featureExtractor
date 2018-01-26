.class public Lcom/biznessapps/layout/adapters/ListItemHolder$TabItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabItem"
.end annotation


# instance fields
.field private tabRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTabRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$TabItem;->tabRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setTabRoot(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "tabRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$TabItem;->tabRoot:Landroid/view/ViewGroup;

    .line 218
    return-void
.end method
