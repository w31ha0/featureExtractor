.class public Lcom/biznessapps/model/EventItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "EventItem.java"


# instance fields
.field private date:Ljava/lang/String;

.field private day:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private month:Ljava/lang/String;

.field private section:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/model/EventItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/model/EventItem;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/biznessapps/model/EventItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/model/EventItem;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/model/EventItem;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/model/EventItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/model/EventItem;->date:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/model/EventItem;->day:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/biznessapps/model/EventItem;->id:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/model/EventItem;->month:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/biznessapps/model/EventItem;->section:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/biznessapps/model/EventItem;->title:Ljava/lang/String;

    .line 29
    return-void
.end method
