.class public Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;
.super Lcom/ibm/icu/text/TimeZoneNames$Factory;
.source "TimeZoneNames.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneNames$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeZoneNames(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;->INSTANCE:Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    return-object v0
.end method
