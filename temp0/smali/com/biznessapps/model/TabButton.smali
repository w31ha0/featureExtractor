.class public Lcom/biznessapps/model/TabButton;
.super Lcom/biznessapps/model/CommonListEntity;
.source "TabButton.java"


# instance fields
.field private iconId:I

.field private tab:Lcom/biznessapps/model/Tab;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    .line 13
    iput v0, p0, Lcom/biznessapps/model/TabButton;->iconId:I

    .line 37
    iput v0, p0, Lcom/biznessapps/model/TabButton;->iconId:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/biznessapps/model/Tab;I)V
    .locals 1
    .param p1, "tab"    # Lcom/biznessapps/model/Tab;
    .param p2, "tabIcon"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/model/TabButton;->iconId:I

    .line 41
    iput-object p1, p0, Lcom/biznessapps/model/TabButton;->tab:Lcom/biznessapps/model/Tab;

    .line 42
    iput p2, p0, Lcom/biznessapps/model/TabButton;->iconId:I

    .line 43
    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/biznessapps/model/TabButton;->iconId:I

    return v0
.end method

.method public getTab()Lcom/biznessapps/model/Tab;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/model/TabButton;->tab:Lcom/biznessapps/model/Tab;

    return-object v0
.end method

.method public setIconId(I)V
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/biznessapps/model/TabButton;->iconId:I

    .line 34
    return-void
.end method

.method public setTab(Lcom/biznessapps/model/Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/biznessapps/model/Tab;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/biznessapps/model/TabButton;->tab:Lcom/biznessapps/model/Tab;

    .line 26
    return-void
.end method
