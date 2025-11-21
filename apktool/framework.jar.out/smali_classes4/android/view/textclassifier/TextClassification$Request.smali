.class public final Landroid/view/textclassifier/TextClassification$Request;
.super Ljava/lang/Object;
.source "TextClassification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassification$Request$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassification$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mEndIndex:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mReferenceTime:Ljava/time/ZonedDateTime;

.field private final greylist-max-o mStartIndex:I

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassification$Request;
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/TextClassification$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassification$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassification$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    iput p3, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    iput-object p4, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    iput-object p5, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    iput-object p6, p0, Landroid/view/textclassifier/TextClassification$Request;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;Landroid/view/textclassifier/TextClassification-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassification$Request;
    .locals 8

    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const-class v0, Landroid/os/LocaleList;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    const-class v7, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p0, v4, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-object v4, v0

    new-instance v0, Landroid/view/textclassifier/TextClassification$Request;

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextClassification$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getDefaultLocales()Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public whitelist getEndIndex()I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    return p0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassification$Request;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getReferenceTime()Ljava/time/ZonedDateTime;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object p0
.end method

.method public whitelist getStartIndex()I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    return p0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object p0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
