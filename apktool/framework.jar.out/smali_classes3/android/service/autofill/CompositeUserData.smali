.class public final Landroid/service/autofill/CompositeUserData;
.super Ljava/lang/Object;
.source "CompositeUserData.java"

# interfaces
.implements Landroid/service/autofill/FieldClassificationUserData;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/CompositeUserData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCategories:[Ljava/lang/String;

.field private final blacklist mGenericUserData:Landroid/service/autofill/UserData;

.field private final blacklist mPackageUserData:Landroid/service/autofill/UserData;

.field private final blacklist mValues:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/CompositeUserData$1;

    invoke-direct {v0}, Landroid/service/autofill/CompositeUserData$1;-><init>()V

    sput-object v0, Landroid/service/autofill/CompositeUserData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    iput-object p2, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {p2}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/autofill/UserData;->getValues()[Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v2, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/service/autofill/UserData;->getValues()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/service/autofill/CompositeUserData;->mCategories:[Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/service/autofill/CompositeUserData;->mValues:[Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCategoryIds()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/CompositeUserData;->mCategories:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDefaultFieldClassificationArgs()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/service/autofill/UserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFieldClassificationAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFieldClassificationAlgorithmForCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/service/autofill/CompositeUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getFieldClassificationAlgorithms()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object p0, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object p0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_4
    return-object v1
.end method

.method public blacklist getFieldClassificationArgs()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object p0, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/autofill/UserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object p0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_4
    return-object v1
.end method

.method public blacklist getValues()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/CompositeUserData;->mValues:[Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "genericUserData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageUserData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
