.class Lcom/ibm/icu/impl/CalendarAstronomer$3;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"

# interfaces
.implements Lcom/ibm/icu/impl/CalendarAstronomer$AngleFunc;


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/CalendarAstronomer;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer$3;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()D
    .locals 2

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer$3;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getMoonAge()D

    move-result-wide v0

    return-wide v0
.end method
