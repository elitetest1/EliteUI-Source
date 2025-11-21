.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$Ranking$RankingAdjustment;,
        Landroid/service/notification/NotificationListenerService$Ranking$UserSentiment;
    }
.end annotation


# static fields
.field private static final blacklist PARCEL_VERSION:I = 0x2

.field public static final blacklist RANKING_DEMOTED:I = -0x1

.field public static final blacklist RANKING_PROMOTED:I = 0x1

.field public static final blacklist RANKING_UNCHANGED:I = 0x0

.field public static final whitelist USER_SENTIMENT_NEGATIVE:I = -0x1

.field public static final whitelist USER_SENTIMENT_NEUTRAL:I = 0x0

.field public static final whitelist USER_SENTIMENT_POSITIVE:I = 0x1

.field public static final whitelist VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private blacklist mCanBubble:Z

.field private greylist-max-o mChannel:Landroid/app/NotificationChannel;

.field private greylist-max-o mHidden:Z

.field private greylist-max-o mImportance:I

.field private greylist-max-o mImportanceExplanation:Ljava/lang/CharSequence;

.field private greylist-max-o mIsAmbient:Z

.field private blacklist mIsBubble:Z

.field private blacklist mIsConversation:Z

.field private blacklist mIsOngoingActivityTurnedOn:Z

.field private blacklist mIsTextChanged:Z

.field private greylist-max-o mKey:Ljava/lang/String;

.field private blacklist mLastAudiblyAlertedMs:J

.field private greylist-max-o mMatchesInterruptionFilter:Z

.field private blacklist mNoisy:Z

.field private greylist-max-o mOverrideGroupKey:Ljava/lang/String;

.field private greylist-max-o mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProposedImportance:I

.field private greylist-max-o mRank:I

.field private blacklist mRankingAdjustment:I

.field private blacklist mRankingScore:F

.field private blacklist mSensitiveContent:Z

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private greylist-max-o mShowBadge:Z

.field private blacklist mSmartActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSmartReplies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSummarization:Ljava/lang/String;

.field private greylist-max-o mSuppressedVisualEffects:I

.field private greylist-max-o mUserSentiment:I

.field private greylist-max-o mVisibilityOverride:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingScore:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    const-class v1, Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    sget-object v1, Landroid/service/notification/SnoozeCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    const-class v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsOngoingActivityTurnedOn:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "malformed Ranking parcel: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " version "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expected 2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o importanceToString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "HIGH"

    return-object p0

    :cond_1
    const-string p0, "DEFAULT"

    return-object p0

    :cond_2
    const-string p0, "LOW"

    return-object p0

    :cond_3
    const-string p0, "MIN"

    return-object p0

    :cond_4
    const-string p0, "NONE"

    return-object p0

    :cond_5
    const-string p0, "UNSPECIFIED"

    return-object p0
.end method


# virtual methods
.method public whitelist canBubble()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    return p0
.end method

.method public whitelist canShowBadge()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    check-cast p1, Landroid/service/notification/NotificationListenerService$Ranking;

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-wide v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ne v2, v3, :cond_6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v2, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v3, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsOngoingActivityTurnedOn:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-boolean p1, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mIsOngoingActivityTurnedOn:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    :goto_4
    return v1
.end method

.method public greylist getAdditionalPeople()Ljava/util/List;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    return-object p0
.end method

.method public whitelist getChannel()Landroid/app/NotificationChannel;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method public whitelist getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public whitelist getImportance()I
    .locals 0

    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    return p0
.end method

.method public whitelist getImportanceExplanation()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getLastAudiblyAlertedMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    return-wide v0
.end method

.method public whitelist getLockscreenVisibilityOverride()I
    .locals 0

    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return p0
.end method

.method public whitelist getOverrideGroupKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getProposedImportance()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    return p0
.end method

.method public whitelist getRank()I
    .locals 0

    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return p0
.end method

.method public blacklist getRankingAdjustment()I
    .locals 0

    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    return p0
.end method

.method public blacklist getRankingScore()F
    .locals 0

    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingScore:F

    return p0
.end method

.method public whitelist getSmartActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public whitelist getSmartReplies()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public greylist getSnoozeCriteria()Ljava/util/List;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getSummarization()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSuppressedVisualEffects()I
    .locals 0

    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    return p0
.end method

.method public whitelist getUserSentiment()I
    .locals 0

    iget p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    return p0
.end method

.method public whitelist hasSensitiveContent()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    return p0
.end method

.method public whitelist isAmbient()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return p0
.end method

.method public blacklist isBubble()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    return p0
.end method

.method public whitelist isConversation()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    return p0
.end method

.method public blacklist isNoisy()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    return p0
.end method

.method public blacklist isOngoingActivityTurnedOn()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsOngoingActivityTurnedOn:Z

    return p0
.end method

.method public whitelist isSuspended()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    return p0
.end method

.method public blacklist isTextChanged()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    return p0
.end method

.method public whitelist matchesInterruptionFilter()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return p0
.end method

.method public blacklist populate(Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 33

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    iget v2, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    iget-boolean v3, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    iget v4, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    iget v5, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    iget v6, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    iget-object v7, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    iget-object v9, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    iget-object v10, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    iget-object v11, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    iget-boolean v12, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    iget v13, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    iget-boolean v14, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    move-object v15, v1

    move/from16 v16, v2

    iget-wide v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    move-wide/from16 v17, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    iget-object v2, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    move/from16 v19, v1

    iget-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    move-object/from16 v20, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    move/from16 v23, v1

    iget-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    move-object/from16 v24, v1

    iget v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    move/from16 v25, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    move/from16 v26, v1

    iget v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    move/from16 v27, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    move/from16 v28, v1

    iget-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    iget-boolean v0, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsOngoingActivityTurnedOn:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v30, v28

    move-object/from16 v28, v1

    move-object v1, v15

    move-wide/from16 v31, v17

    move-object/from16 v18, v2

    move/from16 v2, v16

    move-wide/from16 v15, v31

    move/from16 v17, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move-object/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v30

    invoke-virtual/range {v0 .. v29}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZLjava/lang/String;Z)V

    return-void
.end method

.method public blacklist populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZIII",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;ZIZJZ",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ",
            "Landroid/content/pm/ShortcutInfo;",
            "IZIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    const/4 p1, 0x2

    if-ge p6, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    iput p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    iput p6, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    iput-object p7, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    iput-object p8, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    iput-object p9, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    iput-object p10, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    iput-boolean p12, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    iput p13, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    iput-boolean p14, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    move-wide p1, p15

    iput-wide p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    move/from16 p1, p17

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    move/from16 p1, p22

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    move-object/from16 p1, p23

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    move/from16 p1, p24

    iput p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    move/from16 p1, p25

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    move/from16 p1, p26

    iput p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    move/from16 p1, p27

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    invoke-static/range {p28 .. p28}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    return-void
.end method

.method public blacklist populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZLjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZIII",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;ZIZJZ",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ",
            "Landroid/content/pm/ShortcutInfo;",
            "IZIZ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    const/4 p1, 0x2

    if-ge p6, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    iput p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    iput p6, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    iput-object p7, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    iput-object p8, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    iput-object p9, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    iput-object p10, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    iput-boolean p12, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    iput p13, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    iput-boolean p14, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    move-wide p1, p15

    iput-wide p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    move/from16 p1, p17

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    move/from16 p1, p22

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    move-object/from16 p1, p23

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    move/from16 p1, p24

    iput p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    move/from16 p1, p25

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    move/from16 p1, p26

    iput p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    move/from16 p1, p27

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    invoke-static/range {p28 .. p28}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    move/from16 p1, p29

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsOngoingActivityTurnedOn:Z

    return-void
.end method

.method public blacklist setSmartActions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    return-void
.end method

.method public blacklist withAudiblyAlertedInfo(Landroid/service/notification/NotificationListenerService$Ranking;)Landroid/service/notification/NotificationListenerService$Ranking;
    .locals 6

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-wide v4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_0

    iput-wide v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    :cond_0
    return-object p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceList(Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsOngoingActivityTurnedOn:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
