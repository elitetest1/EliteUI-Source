.class public Landroid/app/Notification$OngoingActivityStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OngoingActivityStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$OngoingActivityStyle$NowBarExpandableType;
    }
.end annotation


# static fields
.field public static final blacklist NOW_BAR_EXPANDABLE_TYPE_FULL:I = 0x2

.field public static final blacklist NOW_BAR_EXPANDABLE_TYPE_HALF:I = 0x1

.field public static final blacklist NOW_BAR_EXPANDABLE_TYPE_NONE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "OngoingActivityStyle"


# instance fields
.field private blacklist mActionBgColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBadge:Landroid/graphics/drawable/Icon;

.field private blacklist mCardBackground:I

.field private blacklist mCardIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mChipBackground:I

.field private blacklist mChipIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mChronometerBase:Ljava/lang/Long;

.field private blacklist mChronometerCountDown:Z

.field private blacklist mChronometerFormat:Ljava/lang/String;

.field private blacklist mChronometerSpeed:F

.field private blacklist mChronometerStart:Z

.field private blacklist mCustomCardViewCenterUI:Landroid/widget/RemoteViews;

.field private blacklist mCustomExpandedCardView:Landroid/widget/RemoteViews;

.field private blacklist mExpandedChipText:Ljava/lang/CharSequence;

.field private blacklist mExpandedChipView:Landroid/widget/RemoteViews;

.field private blacklist mExpandedNowBarView:Landroid/widget/RemoteViews;

.field private blacklist mMoreInfo:Ljava/lang/CharSequence;

.field private blacklist mNowBarExpandableType:I

.field private blacklist mPrimaryActionNum:I

.field private blacklist mPrimaryInfo:Ljava/lang/CharSequence;

.field private blacklist mSecondaryInfo:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mActions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mActionBgColors:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mNowBarExpandableType:I

    iput v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mPrimaryActionNum:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerBase:Ljava/lang/Long;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerFormat:Ljava/lang/String;

    sget-object p0, Landroid/app/Notification$OngoingActivityStyle;->TAG:Ljava/lang/String;

    const-string v0, "Constructor"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist printLog(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/app/Notification$OngoingActivityStyle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Icon = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChipIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mExpandedChipView = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedChipView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mExpandedChipText = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedChipText:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mChipBackground = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChipBackground:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mActions = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/app/Notification$OngoingActivityStyle;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "null, mActionBgColor = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mActionBgColors:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroid/app/Notification$OngoingActivityStyle;->mActionBgColors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "null, mPrimaryActionNum = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mPrimaryActionNum:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCardIcon = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCardIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBadge = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mBadge:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimaryInfo = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mPrimaryInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondaryInfo = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mSecondaryInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMoreInfo = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mMoreInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomCardViewCenterUI = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCustomCardViewCenterUI:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomExpandedCardView = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCardBackground = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCardBackground:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExpandedNowBarView = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedNowBarView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNowBarExpandableType = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mNowBarExpandableType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChronometerBase = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerBase:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChronometerFormat = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerFormat:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChronometerCountDown = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerCountDown:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChronometerStart = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerStart:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChronometerSpeed = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerSpeed:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Notification$OngoingActivityStyle;->addAction(Landroid/app/Notification$Action;Ljava/lang/Integer;)Landroid/app/Notification$OngoingActivityStyle;

    return-object p0
.end method

.method public blacklist addAction(Landroid/app/Notification$Action;Ljava/lang/Integer;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mActionBgColors:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mActionBgColors:Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string p1, "addAction"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist addExtras(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    const-string v0, "android.ongoingActivityChipIcon"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChipIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.ongoingActivityExpandedChipView"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedChipView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.ongoingActivityChipBackground"

    iget v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChipBackground:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.ongoingActivityActionBgColors"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mActionBgColors:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "android.ongoingActivityPrimaryAction"

    iget v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mPrimaryActionNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.ongoingActivityCardIcon"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCardIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.ongoingActivityBadge"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mBadge:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.ongoingActivityPrimaryInfo"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mPrimaryInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "android.ongoingActivitySecondaryInfo"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mSecondaryInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "android.ongoingActivityMoreInfo"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mMoreInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "android.ongoingActivityCustomCardViewCenterUI"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCustomCardViewCenterUI:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.ongoingActivityCustomExpandedCardView"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.ongoingActivityCardBackground"

    iget v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCardBackground:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.ongoingActivityExpandedNowBarView"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedNowBarView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.ongoingActivityNowBarExpandableType"

    iget v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mNowBarExpandableType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.ongoingActivityExpandedChipText"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedChipText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerBase:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "android.ongoingActivityChronometerBase"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "android.ongoingActivityChronometerFormat"

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerFormat:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.ongoingActivityChronometerCountdown"

    iget-boolean v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerCountDown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.ongoingActivityChronometerStart"

    iget-boolean v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerStart:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.ongoingActivityChronometerSpeed"

    iget v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerSpeed:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "addExtras"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/app/Notification$OngoingActivityStyle;->mActions:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/Notification$Action;

    iput-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object p0, p0, Landroid/app/Notification$OngoingActivityStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object p0

    iget-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method public blacklist displayCustomViewInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasSummaryInHeader()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist restoreFromExtras(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string v0, "android.ongoingActivityChipIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mChipIcon:Landroid/graphics/drawable/Icon;

    const-string v0, "android.ongoingActivityExpandedChipView"

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedChipView:Landroid/widget/RemoteViews;

    const-string v0, "android.ongoingActivityChipBackground"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mChipBackground:I

    const-string v0, "android.ongoingActivityActionBgColors"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mActionBgColors:Ljava/util/ArrayList;

    :cond_0
    const-string v0, "android.ongoingActivityPrimaryAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mPrimaryActionNum:I

    const-string v0, "android.ongoingActivityCardIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mCardIcon:Landroid/graphics/drawable/Icon;

    const-string v0, "android.ongoingActivityBadge"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mBadge:Landroid/graphics/drawable/Icon;

    const-string v0, "android.ongoingActivityPrimaryInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mPrimaryInfo:Ljava/lang/CharSequence;

    const-string v0, "android.ongoingActivitySecondaryInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mSecondaryInfo:Ljava/lang/CharSequence;

    const-string v0, "android.ongoingActivityMoreInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mMoreInfo:Ljava/lang/CharSequence;

    const-string v0, "android.ongoingActivityCustomCardViewCenterUI"

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mCustomCardViewCenterUI:Landroid/widget/RemoteViews;

    const-string v0, "android.ongoingActivityCustomExpandedCardView"

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    const-string v0, "android.ongoingActivityCardBackground"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mCardBackground:I

    const-string v0, "android.ongoingActivityExpandedNowBarView"

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedNowBarView:Landroid/widget/RemoteViews;

    const-string v0, "android.ongoingActivityNowBarExpandableType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mNowBarExpandableType:I

    const-string v0, "android.ongoingActivityExpandedChipText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedChipText:Ljava/lang/CharSequence;

    const-string v0, "android.ongoingActivityChronometerBase"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerBase:Ljava/lang/Long;

    const-string v0, "android.ongoingActivityChronometerFormat"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerFormat:Ljava/lang/String;

    const-string v0, "android.ongoingActivityChronometerCountdown"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerCountDown:Z

    const-string v0, "android.ongoingActivityChronometerStart"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerStart:Z

    const-string v0, "android.ongoingActivityChronometerSpeed"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerSpeed:F

    return-void
.end method

.method public blacklist setBadge(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mBadge:Landroid/graphics/drawable/Icon;

    const-string/jumbo p1, "setBadge"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setCardBackground(I)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCardBackground:I

    const-string/jumbo p1, "setCardBackground"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setCardIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCardIcon:Landroid/graphics/drawable/Icon;

    const-string/jumbo p1, "setCardIcon"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setChipBackground(I)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChipBackground:I

    const-string/jumbo p1, "setChipBackground"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setChipIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChipIcon:Landroid/graphics/drawable/Icon;

    const-string/jumbo p1, "setChipIcon"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setChronometerBase(Ljava/lang/Long;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerBase:Ljava/lang/Long;

    const-string/jumbo p1, "setChronometerBase"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setChronometerCountDown(Z)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerCountDown:Z

    const-string/jumbo p1, "setChronometerCountDown"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setChronometerFormat(Ljava/lang/String;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerFormat:Ljava/lang/String;

    const-string/jumbo p1, "setChronometerFormat"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setChronometerSpeed(F)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerSpeed:F

    const-string/jumbo p1, "setChronometerSpeed"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setChronometerStart(Z)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mChronometerStart:Z

    const-string/jumbo p1, "setChronometerStart"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setCustomCardViewCenterUI(Landroid/widget/RemoteViews;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCustomCardViewCenterUI:Landroid/widget/RemoteViews;

    const-string p1, "mCustomCardViewCenterUI"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setCustomExpandedCardView(Landroid/widget/RemoteViews;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    const-string p1, "mCustomExpandedCardView"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setExpandedChipText(Ljava/lang/CharSequence;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedChipText:Ljava/lang/CharSequence;

    const-string/jumbo p1, "setExpandedChipText"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setExpandedChipView(Landroid/widget/RemoteViews;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedChipView:Landroid/widget/RemoteViews;

    const-string/jumbo p1, "setExpandedChipView"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setExpandedNowBarView(Landroid/widget/RemoteViews;I)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mExpandedNowBarView:Landroid/widget/RemoteViews;

    iput p2, p0, Landroid/app/Notification$OngoingActivityStyle;->mNowBarExpandableType:I

    const-string/jumbo p1, "setExpandedNowBarView"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setMoreInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mMoreInfo:Ljava/lang/CharSequence;

    const-string/jumbo p1, "setMoreInfo"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setPrimaryActionNumber(I)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mPrimaryActionNum:I

    const-string/jumbo p1, "setPrimaryActionNumber"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setPrimaryInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mPrimaryInfo:Ljava/lang/CharSequence;

    const-string/jumbo p1, "setPrimaryInfo"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setSecondaryInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$OngoingActivityStyle;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$OngoingActivityStyle;->mSecondaryInfo:Ljava/lang/CharSequence;

    const-string/jumbo p1, "setSecondaryInfo"

    invoke-direct {p0, p1}, Landroid/app/Notification$OngoingActivityStyle;->printLog(Ljava/lang/String;)V

    return-object p0
.end method
