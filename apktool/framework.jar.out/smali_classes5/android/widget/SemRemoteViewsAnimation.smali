.class public abstract Landroid/widget/SemRemoteViewsAnimation;
.super Ljava/lang/Object;
.source "SemRemoteViewsAnimation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemRemoteViewsAnimation"


# instance fields
.field protected final blacklist MAX_DURATION:J

.field protected blacklist mIsExpired:Z

.field protected blacklist mViewId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$gNodNI8ffMjkoD1fTKLnsZ8uhIU(Landroid/widget/SemRemoteViewsAnimation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;->lambda$play$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Landroid/widget/SemRemoteViewsAnimation;->MAX_DURATION:J

    iput p1, p0, Landroid/widget/SemRemoteViewsAnimation;->mViewId:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Landroid/widget/SemRemoteViewsAnimation;->MAX_DURATION:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsAnimation;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/SemRemoteViewsAnimation;->mIsExpired:Z

    return-void
.end method

.method private synthetic blacklist lambda$play$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;->endAnimation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract blacklist endAnimation(Landroid/view/View;)V
.end method

.method public blacklist play(Landroid/view/View;)V
    .locals 3

    const-string v0, "SemRemoteViewsAnimation"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;->startAnimation(Landroid/view/View;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/widget/SemRemoteViewsAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/widget/SemRemoteViewsAnimation$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SemRemoteViewsAnimation;Landroid/view/View;)V

    const-wide/16 p0, 0xfa0

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-string p0, "Looper is null. Stop the play endAnimation"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Not ready looper. Stop the play startAnimation "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected abstract blacklist startAnimation(Landroid/view/View;)V
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/widget/SemRemoteViewsAnimation;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Landroid/widget/SemRemoteViewsAnimation;->mIsExpired:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
