.class final Landroid/app/FragmentState;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mArguments:Landroid/os/Bundle;

.field final blacklist mClassName:Ljava/lang/String;

.field final blacklist mContainerId:I

.field final blacklist mDetached:Z

.field final blacklist mFragmentId:I

.field final blacklist mFromLayout:Z

.field final blacklist mHidden:Z

.field final blacklist mIndex:I

.field blacklist mInstance:Landroid/app/Fragment;

.field final blacklist mRetainInstance:Z

.field blacklist mSavedFragmentState:Landroid/os/Bundle;

.field final blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/FragmentState$1;

    invoke-direct {v0}, Landroid/app/FragmentState$1;-><init>()V

    sput-object v0, Landroid/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    iget v0, p1, Landroid/app/Fragment;->mFragmentId:I

    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    iget-object v0, p1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/app/Fragment;->mRetainInstance:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    iget-object v0, p1, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    iget-boolean p1, p1, Landroid/app/Fragment;->mHidden:Z

    iput-boolean p1, p0, Landroid/app/FragmentState;->mHidden:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/app/FragmentState;->mHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist instantiate(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p2

    iput-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {v0, p2, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p2

    iput-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    :goto_0
    iget-object p2, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-object v0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v0, p2, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_2
    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget v0, p0, Landroid/app/FragmentState;->mIndex:I

    invoke-virtual {p2, v0, p3}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean p3, p0, Landroid/app/FragmentState;->mFromLayout:Z

    iput-boolean p3, p2, Landroid/app/Fragment;->mFromLayout:Z

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/app/Fragment;->mRestored:Z

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget p3, p0, Landroid/app/FragmentState;->mFragmentId:I

    iput p3, p2, Landroid/app/Fragment;->mFragmentId:I

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget p3, p0, Landroid/app/FragmentState;->mContainerId:I

    iput p3, p2, Landroid/app/Fragment;->mContainerId:I

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-object p3, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object p3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean p3, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    iput-boolean p3, p2, Landroid/app/Fragment;->mRetainInstance:Z

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean p3, p0, Landroid/app/FragmentState;->mDetached:Z

    iput-boolean p3, p2, Landroid/app/Fragment;->mDetached:Z

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean p3, p0, Landroid/app/FragmentState;->mHidden:Z

    iput-boolean p3, p2, Landroid/app/Fragment;->mHidden:Z

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-object p1, p1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object p1, p2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    sget-boolean p1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Instantiated fragment "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iput-object p4, p1, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    iget-object p0, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/app/FragmentState;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/app/FragmentState;->mFromLayout:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/FragmentState;->mContainerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/app/FragmentState;->mDetached:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Landroid/app/FragmentState;->mHidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
