.class public Lcom/netflix/android/widgetry/widget/UserRatingButton;
.super Landroid/widget/FrameLayout;
.source "UserRatingButton.java"


# static fields
.field private static final RIPPLE_DURATION_MS:J = 0x438L

.field private static final TAG:Ljava/lang/String; = "UserRatingButton"

.field public static final THUMBS_DOWN:I = 0x1

.field public static final THUMBS_DOWN_STR:Ljava/lang/String; = "THUMBS_DOWN"

.field public static final THUMBS_UNRATED:I = 0x0

.field public static final THUMBS_UNRATED_STR:Ljava/lang/String; = "UNRATED"

.field public static final THUMBS_UP:I = 0x2

.field public static final THUMBS_UP_STR:Ljava/lang/String; = "THUMBS_UP"


# instance fields
.field private mDark:Z

.field private mDarkForegroundTextColor:Landroid/content/res/ColorStateList;

.field private mIcon:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mOnRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

.field private mRating:I

.field private mRespectLayoutDirection:Z

.field private mThumbDownDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbDownLabel:Ljava/lang/CharSequence;

.field private mThumbUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbUpLabel:Ljava/lang/CharSequence;

.field private mUnratedDrawable:Landroid/graphics/drawable/Drawable;

.field private mUnratedLabel:Ljava/lang/CharSequence;

.field private mUserBackground:Landroid/graphics/drawable/Drawable;

.field private mUserRatingButtonOverlay:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

.field private final updateIconBackground:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 174
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mDark:Z

    .line 69
    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButton$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton$1;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->updateIconBackground:Ljava/lang/Runnable;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRating:I

    .line 171
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRespectLayoutDirection:Z

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->sharedConstructor(Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mDark:Z

    .line 69
    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButton$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton$1;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->updateIconBackground:Ljava/lang/Runnable;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRating:I

    .line 171
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRespectLayoutDirection:Z

    .line 180
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->sharedConstructor(Landroid/util/AttributeSet;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mDark:Z

    .line 69
    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButton$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton$1;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->updateIconBackground:Ljava/lang/Runnable;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRating:I

    .line 171
    iput-boolean v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRespectLayoutDirection:Z

    .line 185
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->sharedConstructor(Landroid/util/AttributeSet;)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/android/widgetry/widget/UserRatingButton;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->updateIconBackground()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/android/widgetry/widget/UserRatingButton;Landroid/support/design/widget/CoordinatorLayout;IZ)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->doAction(Landroid/support/design/widget/CoordinatorLayout;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/android/widgetry/widget/UserRatingButton;)Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUserRatingButtonOverlay:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    return-object v0
.end method

.method public static asThumbsRating(I)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 90
    if-ne p0, v0, :cond_0

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    if-ne p0, v1, :cond_1

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doAction(Landroid/support/design/widget/CoordinatorLayout;IZ)V
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRating:I

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->openOverlay(Landroid/support/design/widget/CoordinatorLayout;IZ)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->removeRating()V

    goto :goto_0
.end method

.method private openOverlay(Landroid/support/design/widget/CoordinatorLayout;IZ)V
    .locals 6

    .prologue
    .line 362
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mOnRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "openOverlay called before user set a OnRateListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUserRatingButtonOverlay:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mOnRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    iget-boolean v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mDark:Z

    iget-boolean v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRespectLayoutDirection:Z

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getLayoutDirection()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;-><init>(Landroid/content/Context;Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;ZZI)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUserRatingButtonOverlay:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 369
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUserRatingButtonOverlay:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {v0, p1, p0, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->show(Landroid/support/design/widget/CoordinatorLayout;Lcom/netflix/android/widgetry/widget/UserRatingButton;I)V

    .line 370
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mOnRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    invoke-interface {v0, p0, p3}, Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;->onOpened(Lcom/netflix/android/widgetry/widget/UserRatingButton;Z)V

    .line 371
    return-void
.end method

.method private refresh(J)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v2

    .line 290
    iget v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRating:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    .line 304
    :goto_0
    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 306
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->updateIconBackground(J)V

    .line 308
    return-void

    .line 292
    :pswitch_0
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mThumbDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 293
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mThumbDownLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mThumbUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 297
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mThumbUpLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 300
    :pswitch_2
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUnratedDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUnratedLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeRating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mOnRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mOnRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    invoke-interface {v0, p0, v2}, Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;->onRate(Lcom/netflix/android/widgetry/widget/UserRatingButton;I)V

    .line 357
    const-wide/16 v0, 0x438

    invoke-direct {p0, v2, v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setRating(IJ)V

    .line 359
    :cond_0
    return-void
.end method

.method private setRating(IJ)V
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRating:I

    if-eq v0, p1, :cond_0

    .line 276
    iput p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRating:I

    .line 277
    invoke-direct {p0, p2, p3}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->refresh(J)V

    .line 279
    :cond_0
    return-void
.end method

.method private sharedConstructor(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$layout;->user_rating_button:I

    invoke-static {v0, v1, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 190
    sget v0, Lcom/netflix/android/widgetry/R$id;->user_rating_button_icon:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    .line 191
    sget v0, Lcom/netflix/android/widgetry/R$id;->user_rating_button_label:I

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mLabel:Landroid/widget/TextView;

    .line 193
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/widgetry/R$styleable;->UserRatingButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->UserRatingButton_urb_thumb_up_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mThumbUpLabel:Ljava/lang/CharSequence;

    .line 196
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->UserRatingButton_urb_thumb_down_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mThumbDownLabel:Ljava/lang/CharSequence;

    .line 197
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->UserRatingButton_urb_unrated_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUnratedLabel:Ljava/lang/CharSequence;

    .line 199
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$drawable;->ic_thumbs_up:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mThumbUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$drawable;->ic_thumbs_down:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mThumbDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$drawable;->ic_thumbs_up_outline:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUnratedDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->UserRatingButton_urb_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_1

    .line 205
    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mDarkForegroundTextColor:Landroid/content/res/ColorStateList;

    .line 209
    :goto_0
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->UserRatingButton_urb_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lcom/netflix/android/widgetry/R$styleable;->UserRatingButton_urb_text_size:I

    iget-object v4, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    :cond_0
    sget v1, Lcom/netflix/android/widgetry/R$styleable;->UserRatingButton_urb_dark:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setDark(Z)V

    .line 214
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->refresh(J)V

    .line 217
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$color;->thumb_button_dark_foreground:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mDarkForegroundTextColor:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public static thumbRatingFromString(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "THUMBS_DOWN"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x2

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    const-string/jumbo v0, "THUMBS_UP"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIconBackground()V
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRating:I

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUserBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateIconBackground(J)V
    .locals 3

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->updateIconBackground:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 254
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->updateIconBackground:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->updateIconBackground()V

    goto :goto_0
.end method

.method private wrap(Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;)Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;
    .locals 1

    .prologue
    .line 374
    new-instance v0, Lcom/netflix/android/widgetry/widget/UserRatingButton$5;

    invoke-direct {v0, p0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButton$5;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;)V

    return-object v0
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRating:I

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 243
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUserBackground:Landroid/graphics/drawable/Drawable;

    .line 246
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->updateIconBackground()V

    .line 249
    :cond_0
    return-void
.end method

.method public setDark(Z)V
    .locals 3

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mDark:Z

    .line 229
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mDark:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mDarkForegroundTextColor:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 231
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mDark:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_dark_foreground:I

    :goto_1
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setIconColor(I)V

    .line 232
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/netflix/android/widgetry/R$color;->thumb_button_light_foreground:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_1
    sget v0, Lcom/netflix/android/widgetry/R$color;->thumb_button_light_foreground:I

    goto :goto_1
.end method

.method public setIconColor(I)V
    .locals 2

    .prologue
    .line 235
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mThumbUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 237
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mThumbDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 238
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mUnratedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 239
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Don\'t call to setOnClickListener, instead call setOnRateListener"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnRateListener(Landroid/support/design/widget/CoordinatorLayout;Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;ZI)V
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setClickable(Z)V

    .line 314
    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->wrap(Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;)Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mOnRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    .line 315
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/android/widgetry/widget/UserRatingButton$2;

    invoke-direct {v1, p0, p1, p4}, Lcom/netflix/android/widgetry/widget/UserRatingButton$2;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;Landroid/support/design/widget/CoordinatorLayout;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    if-eqz p3, :cond_1

    .line 322
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/android/widgetry/widget/UserRatingButton$3;

    invoke-direct {v1, p0, p1, p4}, Lcom/netflix/android/widgetry/widget/UserRatingButton$3;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;Landroid/support/design/widget/CoordinatorLayout;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/android/widgetry/widget/UserRatingButton$4;

    invoke-direct {v1, p0}, Lcom/netflix/android/widgetry/widget/UserRatingButton$4;-><init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    :cond_1
    return-void
.end method

.method public setRating(I)V
    .locals 2

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setRating(IJ)V

    .line 272
    return-void
.end method

.method public setRespectLayoutDirection(Z)V
    .locals 0

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton;->mRespectLayoutDirection:Z

    .line 225
    return-void
.end method
