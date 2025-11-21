.class public final Landroid/telephony/UssdResponse;
.super Ljava/lang/Object;
.source "UssdResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UssdResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mReturnMessage:Ljava/lang/CharSequence;

.field private greylist-max-o mUssdRequest:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/UssdResponse$1;

    invoke-direct {v0}, Landroid/telephony/UssdResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/UssdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o getReturnMessage()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public greylist-max-o getUssdRequest()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
