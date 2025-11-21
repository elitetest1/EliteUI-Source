.class public abstract Landroid/text/LoginFilter;
.super Ljava/lang/Object;
.source "LoginFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/LoginFilter$PasswordFilterGMail;,
        Landroid/text/LoginFilter$UsernameFilterGeneric;,
        Landroid/text/LoginFilter$UsernameFilterGMail;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mAppendInvalid:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    return-void
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStart()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_1

    invoke-interface {p4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    move v1, p2

    :goto_1
    if-ge v1, p3, :cond_5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-boolean v3, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-nez p5, :cond_4

    new-instance p5, Landroid/text/SpannableStringBuilder;

    invoke-direct {p5, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    sub-int v0, v1, p2

    :cond_4
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p5, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_2
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    if-ge p6, p1, :cond_7

    invoke-interface {p4, p6}, Landroid/text/Spanned;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :cond_6
    add-int/lit8 p6, p6, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStop()V

    return-object p5
.end method

.method public abstract whitelist isAllowed(C)Z
.end method

.method public whitelist onInvalidCharacter(C)V
    .locals 0

    return-void
.end method

.method public whitelist onStart()V
    .locals 0

    return-void
.end method

.method public whitelist onStop()V
    .locals 0

    return-void
.end method
