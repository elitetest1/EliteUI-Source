.class final Landroid/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mBreadCrumbShortTitleRes:I

.field final blacklist mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final blacklist mBreadCrumbTitleRes:I

.field final blacklist mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final blacklist mIndex:I

.field final blacklist mName:Ljava/lang/String;

.field final blacklist mOps:[I

.field final blacklist mReorderingAllowed:Z

.field final blacklist mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTransition:I

.field final blacklist mTransitionStyle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/BackStackState$1;

    invoke-direct {v0}, Landroid/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p2, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    mul-int/lit8 v0, p1, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    iget-boolean v0, p2, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p2, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord$Op;

    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v1, 0x1

    iget v5, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    aput v5, v3, v1

    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x2

    iget-object v6, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v6, :cond_0

    iget-object v6, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    :goto_1
    aput v6, v3, v4

    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v1, 0x3

    iget v6, v2, Landroid/app/BackStackRecord$Op;->enterAnim:I

    aput v6, v3, v5

    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x4

    iget v6, v2, Landroid/app/BackStackRecord$Op;->exitAnim:I

    aput v6, v3, v4

    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v1, 0x5

    iget v6, v2, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    aput v6, v3, v5

    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v1, v1, 0x6

    iget v2, v2, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    aput v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget p1, p2, Landroid/app/BackStackRecord;->mTransition:I

    iput p1, p0, Landroid/app/BackStackState;->mTransition:I

    iget p1, p2, Landroid/app/BackStackRecord;->mTransitionStyle:I

    iput p1, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    iget-object p1, p2, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    iget p1, p2, Landroid/app/BackStackRecord;->mIndex:I

    iput p1, p0, Landroid/app/BackStackState;->mIndex:I

    iget p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput p1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    iget-object p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput p1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iget-object p1, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object p1, p2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object p1, p2, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean p1, p2, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean p1, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not on back stack"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;
    .locals 7

    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/app/BackStackState;->mOps:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    new-instance v3, Landroid/app/BackStackRecord$Op;

    invoke-direct {v3}, Landroid/app/BackStackRecord$Op;-><init>()V

    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v1

    iput v4, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Instantiate "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " op #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " base fragment #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "FragmentManager"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v1, 0x2

    aget v4, v4, v5

    if-ltz v4, :cond_1

    iget-object v5, p1, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    iput-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    :goto_1
    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x3

    aget v4, v4, v6

    iput v4, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v1, 0x4

    aget v4, v4, v5

    iput v4, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v1, 0x5

    aget v4, v4, v6

    iput v4, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iget-object v4, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v1, v1, 0x6

    aget v4, v4, v5

    iput v4, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iget v4, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v0, Landroid/app/BackStackRecord;->mEnterAnim:I

    iget v4, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v0, Landroid/app/BackStackRecord;->mExitAnim:I

    iget v4, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v4, v0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    iget v4, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v4, v0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    invoke-virtual {v0, v3}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    iget p1, p0, Landroid/app/BackStackState;->mTransition:I

    iput p1, v0, Landroid/app/BackStackRecord;->mTransition:I

    iget p1, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    iput p1, v0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    iget-object p1, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    iput-object p1, v0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    iget p1, p0, Landroid/app/BackStackState;->mIndex:I

    iput p1, v0, Landroid/app/BackStackRecord;->mIndex:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    iget v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iget-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iget-object v1, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean p0, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    iput-boolean p0, v0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroid/app/BackStackState;->mOps:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Landroid/app/BackStackState;->mTransition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/app/BackStackState;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p0, p0, Landroid/app/BackStackState;->mReorderingAllowed:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
