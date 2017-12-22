.class public Lorg/linphone/core/DialPlanImpl;
.super Ljava/lang/Object;
.source "DialPlanImpl.java"

# interfaces
.implements Lorg/linphone/core/DialPlan;


# instance fields
.field private final countryCallingCode:Ljava/lang/String;

.field private final countryCode:Ljava/lang/String;

.field private final countryName:Ljava/lang/String;

.field private final numberLength:I

.field private final usualPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/linphone/core/DialPlanImpl;->countryName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lorg/linphone/core/DialPlanImpl;->countryCode:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lorg/linphone/core/DialPlanImpl;->countryCallingCode:Ljava/lang/String;

    .line 15
    iput p4, p0, Lorg/linphone/core/DialPlanImpl;->numberLength:I

    .line 16
    iput-object p5, p0, Lorg/linphone/core/DialPlanImpl;->usualPrefix:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final getCountryCallingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/linphone/core/DialPlanImpl;->countryCallingCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/linphone/core/DialPlanImpl;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/linphone/core/DialPlanImpl;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumberLength()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lorg/linphone/core/DialPlanImpl;->numberLength:I

    return v0
.end method

.method public final getUsualPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/linphone/core/DialPlanImpl;->usualPrefix:Ljava/lang/String;

    return-object v0
.end method
