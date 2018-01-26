.class public Lcom/biznessapps/model/LocationOpeningTime;
.super Ljava/lang/Object;
.source "LocationOpeningTime.java"


# instance fields
.field private day:Ljava/lang/String;

.field private openFrom:Ljava/lang/String;

.field private openTo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/LocationOpeningTime;->day:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/LocationOpeningTime;->openFrom:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/LocationOpeningTime;->openTo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/biznessapps/model/LocationOpeningTime;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/model/LocationOpeningTime;->openFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/model/LocationOpeningTime;->openTo:Ljava/lang/String;

    return-object v0
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/biznessapps/model/LocationOpeningTime;->day:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setOpenFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "openFrom"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/biznessapps/model/LocationOpeningTime;->openFrom:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setOpenTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "openTo"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/biznessapps/model/LocationOpeningTime;->openTo:Ljava/lang/String;

    .line 34
    return-void
.end method
