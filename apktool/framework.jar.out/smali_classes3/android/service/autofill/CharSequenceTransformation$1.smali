.class Landroid/service/autofill/CharSequenceTransformation$1;
.super Ljava/lang/Object;
.source "CharSequenceTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CharSequenceTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/CharSequenceTransformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CharSequenceTransformation;
    .locals 7

    const/4 p0, 0x0

    const-class v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/service/autofill/CharSequenceTransformation$Builder;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    aget-object v4, v0, v2

    aget-object v2, p1, v2

    invoke-direct {v1, v3, v4, v2}, Landroid/service/autofill/CharSequenceTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    array-length v2, p0

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    aget-object v5, v0, v3

    aget-object v6, p1, v3

    invoke-virtual {v1, v4, v5, v6}, Landroid/service/autofill/CharSequenceTransformation$Builder;->addField(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)Landroid/service/autofill/CharSequenceTransformation$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/service/autofill/CharSequenceTransformation$Builder;->build()Landroid/service/autofill/CharSequenceTransformation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/service/autofill/CharSequenceTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CharSequenceTransformation;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/CharSequenceTransformation;
    .locals 0

    new-array p0, p1, [Landroid/service/autofill/CharSequenceTransformation;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/service/autofill/CharSequenceTransformation$1;->newArray(I)[Landroid/service/autofill/CharSequenceTransformation;

    move-result-object p0

    return-object p0
.end method
