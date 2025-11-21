.class public Landroid/webkit/ConsoleMessage;
.super Ljava/lang/Object;
.source "ConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ConsoleMessage$MessageLevel;
    }
.end annotation


# instance fields
.field private greylist-max-p mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

.field private greylist-max-p mLineNumber:I

.field private greylist-max-p mMessage:Ljava/lang/String;

.field private greylist-max-p mSourceId:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/ConsoleMessage;->mMessage:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/ConsoleMessage;->mSourceId:Ljava/lang/String;

    iput p3, p0, Landroid/webkit/ConsoleMessage;->mLineNumber:I

    iput-object p4, p0, Landroid/webkit/ConsoleMessage;->mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

    return-void
.end method


# virtual methods
.method public whitelist lineNumber()I
    .locals 0

    iget p0, p0, Landroid/webkit/ConsoleMessage;->mLineNumber:I

    return p0
.end method

.method public whitelist message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/webkit/ConsoleMessage;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;
    .locals 0

    iget-object p0, p0, Landroid/webkit/ConsoleMessage;->mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

    return-object p0
.end method

.method public whitelist sourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/webkit/ConsoleMessage;->mSourceId:Ljava/lang/String;

    return-object p0
.end method
