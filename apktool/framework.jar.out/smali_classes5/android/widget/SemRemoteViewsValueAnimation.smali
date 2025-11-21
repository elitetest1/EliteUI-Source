.class public Landroid/widget/SemRemoteViewsValueAnimation;
.super Landroid/widget/SemRemoteViewsAnimation;
.source "SemRemoteViewsValueAnimation.java"


# static fields
.field private static final blacklist ANIMATION_TYPE_LAYOUT_PARAMS_HEIGHT:Ljava/lang/String; = "height"

.field private static final blacklist ANIMATION_TYPE_LAYOUT_PARAMS_WIDTH:Ljava/lang/String; = "width"

.field public static final whitelist ANIMATION_TYPE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final blacklist ANIMATION_TYPE_TEXTVIEW_DECIMAL_TEXT:Ljava/lang/String; = "decimal_text"

.field private static final blacklist ANIMATION_TYPE_VIEW_ALPHA:Ljava/lang/String; = "alpha"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/SemRemoteViewsValueAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemRemoteViewsValueAnimation"

.field public static final whitelist VALUE_TYPE_COLOR:Ljava/lang/String; = "color"

.field public static final whitelist VALUE_TYPE_FLOAT:Ljava/lang/String; = "float"

.field public static final whitelist VALUE_TYPE_INT:Ljava/lang/String; = "int"


# instance fields
.field private final blacklist mAnimationType:Ljava/lang/String;

.field private blacklist mDecimalFormat:Landroid/icu/text/DecimalFormat;

.field private blacklist mDecimalFormatString:Ljava/lang/String;

.field private final blacklist mDuration:J

.field private final blacklist mFloatValueFrom:F

.field private final blacklist mFloatValueTo:F

.field private final blacklist mIntValueFrom:I

.field private final blacklist mIntValueTo:I

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mInterpolatorResId:I

.field private final blacklist mIsValidArgument:Z

.field private blacklist mOptions:Landroid/os/Bundle;

.field private final blacklist mValueType:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$TxYecIYHGqbmFcFV-1DqOfU5YbM(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SemRemoteViewsValueAnimation;->lambda$provideAnimatorUpdateListener$3(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XzKVLk4Y5G6CYrLXQrZxIg6ivuw(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemRemoteViewsValueAnimation;->lambda$provideAnimatorUpdateListener$1(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/SemRemoteViewsValueAnimation$2;

    invoke-direct {v0}, Landroid/widget/SemRemoteViewsValueAnimation$2;-><init>()V

    sput-object v0, Landroid/widget/SemRemoteViewsValueAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;FFJ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/SemRemoteViewsValueAnimation;-><init>(ILjava/lang/String;Ljava/lang/String;FFJLandroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;FFJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    iput-object p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    const-string p1, "decimal_text"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "float"

    iput-object p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormatString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    :goto_0
    iput p4, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueFrom:F

    iput p5, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueTo:F

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    iput p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    iput-wide p6, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDuration:J

    invoke-direct {p0}, Landroid/widget/SemRemoteViewsValueAnimation;->checkArgumentValidation()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsValidArgument:Z

    iput-object p8, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/SemRemoteViewsValueAnimation;-><init>(ILjava/lang/String;Ljava/lang/String;IIJLandroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IIJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    iput-object p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    const-string p1, "decimal_text"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "int"

    iput-object p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormatString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueFrom:F

    iput p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueTo:F

    iput p4, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    iput p5, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    iput-wide p6, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDuration:J

    invoke-direct {p0}, Landroid/widget/SemRemoteViewsValueAnimation;->checkArgumentValidation()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsValidArgument:Z

    iput-object p8, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueFrom:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueTo:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsValidArgument:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormatString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    return-void
.end method

.method private blacklist checkArgumentValidation()Z
    .locals 5

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "decimal_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "progress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    move v2, v3

    goto :goto_1

    :pswitch_0
    const-string v0, "int"

    iget-object p0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    :pswitch_1
    if-nez v2, :cond_5

    const-string p0, "SemRemoteViewsValueAnimation"

    const-string v0, "Illegal Argument"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_4
        -0x3bab3dd3 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
        0xbf0555b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic blacklist lambda$provideAnimatorUpdateListener$0(Landroid/widget/ProgressBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private synthetic blacklist lambda$provideAnimatorUpdateListener$1(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic blacklist lambda$provideAnimatorUpdateListener$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic blacklist lambda$provideAnimatorUpdateListener$3(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/DecimalFormat;

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    :cond_0
    const-string v0, "float"

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    invoke-static {p1, p2, p0}, Landroid/widget/RemoteViews;->setTextWithSpannableString(Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    float-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string v0, "int"

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    invoke-static {p1, p2, p0}, Landroid/widget/RemoteViews;->setTextWithSpannableString(Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_3
    iget-object p0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "missed value type:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemRemoteViewsValueAnimation"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist provideAnimatorListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 2

    iget-object p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "decimal_text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p1, Landroid/widget/SemRemoteViewsValueAnimation$1;

    invoke-direct {p1, p0}, Landroid/widget/SemRemoteViewsValueAnimation$1;-><init>(Landroid/widget/SemRemoteViewsValueAnimation;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_4
        -0x3bab3dd3 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
        0xbf0555b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist provideAnimatorUpdateListener(Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 3

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "decimal_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "progress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    const-string v0, "SemRemoteViewsValueAnimation"

    const/4 v1, 0x0

    packed-switch v2, :pswitch_data_0

    return-object v1

    :pswitch_0
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda3;-><init>(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/widget/TextView;)V

    return-object v0

    :cond_5
    const-string/jumbo p0, "targetView is not TextView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_1
    new-instance p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    return-object p0

    :pswitch_2
    instance-of p0, p1, Landroid/widget/ProgressBar;

    if-eqz p0, :cond_6

    check-cast p1, Landroid/widget/ProgressBar;

    new-instance p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ProgressBar;)V

    return-object p0

    :cond_6
    const-string/jumbo p0, "targetView is not ProgressBar"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda1;-><init>(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_4
        -0x3bab3dd3 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
        0xbf0555b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist writeToParcel(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemRemoteViewsValueAnimation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist endAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public greylist hidden_setInterpolator(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    return-void
.end method

.method public whitelist semSetInterpolator(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    return-void
.end method

.method protected blacklist startAnimation(Landroid/view/View;)V
    .locals 7

    iget-boolean v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsValidArgument:Z

    if-nez v0, :cond_0

    const-string p0, "SemRemoteViewsValueAnimation"

    const-string p1, "Illegal Argument"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iget v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_3
    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_4
    iget-wide v3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDuration:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "float"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "color"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v6

    goto :goto_0

    :sswitch_2
    const-string v3, "int"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v2, v5

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v1, Landroid/animation/FloatEvaluator;

    invoke-direct {v1}, Landroid/animation/FloatEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueFrom:F

    iget v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueTo:F

    new-array v3, v4, [F

    aput v1, v3, v5

    aput v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_1

    :pswitch_1
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    iget v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_1

    :pswitch_2
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    iget v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsValueAnimation;->provideAnimatorUpdateListener(Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsValueAnimation;->provideAnimatorListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    if-nez p1, :cond_9

    :goto_2
    return-void

    :cond_9
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsExpired:Z

    if-eqz p1, :cond_a

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_a
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v6, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsExpired:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x197ef -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x5d0225c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/SemRemoteViewsAnimation;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueFrom:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueTo:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsValidArgument:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormatString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
