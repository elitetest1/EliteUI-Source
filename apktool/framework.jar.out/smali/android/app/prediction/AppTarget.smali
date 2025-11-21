.class public final Landroid/app/prediction/AppTarget;
.super Ljava/lang/Object;
.source "AppTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppTarget$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClassName:Ljava/lang/String;

.field private final blacklist mId:Landroid/app/prediction/AppTargetId;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRank:I

.field private final blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/prediction/AppTarget$1;

    invoke-direct {v0}, Landroid/app/prediction/AppTarget$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    iput-object p4, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object p2, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    iput p6, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;ILandroid/app/prediction/AppTarget-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/prediction/AppTarget;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    const/4 p1, 0x0

    iput p1, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/prediction/AppTargetId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppTargetId;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/prediction/AppTarget-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/prediction/AppTarget;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/app/prediction/AppTarget;

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v3, p1, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    iget-object v3, p1, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v3, :cond_5

    iget-object v4, p1, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v4, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    iget-object v4, p1, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_7

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    iget-object v4, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    iget-object v5, p1, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    invoke-virtual {v4, v5}, Landroid/app/prediction/AppTargetId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    iget-object v4, p1, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    iget p0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    iget p1, p1, Landroid/app/prediction/AppTarget;->mRank:I

    if-ne p0, p1, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getId()Landroid/app/prediction/AppTargetId;
    .locals 0

    iget-object p0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    return-object p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getRank()I
    .locals 0

    iget p0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return p0
.end method

.method public whitelist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    iget-object v1, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget-object p2, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
