.class public Landroid/widget/SemRemoteViewsViewAnimation;
.super Landroid/widget/SemRemoteViewsAnimation;
.source "SemRemoteViewsViewAnimation.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/SemRemoteViewsViewAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemRemoteViewsViewAnimation"


# instance fields
.field private final blacklist mAnimResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/SemRemoteViewsViewAnimation$1;

    invoke-direct {v0}, Landroid/widget/SemRemoteViewsViewAnimation$1;-><init>()V

    sput-object v0, Landroid/widget/SemRemoteViewsViewAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(I)V

    iput p2, p0, Landroid/widget/SemRemoteViewsViewAnimation;->mAnimResId:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/SemRemoteViewsViewAnimation;->mAnimResId:I

    return-void
.end method

.method public static blacklist writeToParcel(Landroid/widget/SemRemoteViewsViewAnimation;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemRemoteViewsViewAnimation;->writeToParcel(Landroid/os/Parcel;I)V

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

.method protected blacklist startAnimation(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/SemRemoteViewsViewAnimation;->mAnimResId:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemRemoteViewsViewAnimation;->mIsExpired:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/widget/SemRemoteViewsViewAnimation;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Landroid/widget/SemRemoteViewsViewAnimation;->mAnimResId:I

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/widget/SemRemoteViewsViewAnimation$2;

    invoke-direct {v1, p0}, Landroid/widget/SemRemoteViewsViewAnimation$2;-><init>(Landroid/widget/SemRemoteViewsViewAnimation;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-boolean p0, p0, Landroid/widget/SemRemoteViewsViewAnimation;->mIsExpired:Z

    if-eqz p0, :cond_4

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/SemRemoteViewsAnimation;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Landroid/widget/SemRemoteViewsViewAnimation;->mAnimResId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
