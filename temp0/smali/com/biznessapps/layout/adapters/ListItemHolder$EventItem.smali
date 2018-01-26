.class public Lcom/biznessapps/layout/adapters/ListItemHolder$EventItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventItem"
.end annotation


# instance fields
.field private textViewCalendar:Landroid/widget/TextView;

.field private textViewText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextViewCalendar()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$EventItem;->textViewCalendar:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$EventItem;->textViewText:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextViewCalendar(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewCalendar"    # Landroid/widget/TextView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$EventItem;->textViewCalendar:Landroid/widget/TextView;

    .line 167
    return-void
.end method

.method public setTextViewText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewText"    # Landroid/widget/TextView;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$EventItem;->textViewText:Landroid/widget/TextView;

    .line 159
    return-void
.end method
