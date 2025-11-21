.class public final Landroid/provider/ContactsContract$CommonDataKinds$Phone;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation


# static fields
.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_v2"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist NORMALIZED_NUMBER:Ljava/lang/String; = "data4"

.field public static final whitelist NUMBER:Ljava/lang/String; = "data1"

.field public static final whitelist SEARCH_DISPLAY_NAME_KEY:Ljava/lang/String; = "search_display_name"

.field public static final whitelist SEARCH_PHONE_NUMBER_KEY:Ljava/lang/String; = "search_phone_number"

.field public static final whitelist SEM_TYPE_CONFERENCE:I = 0x3fd

.field public static final whitelist TYPE_ASSISTANT:I = 0x13

.field public static final whitelist TYPE_CALLBACK:I = 0x8

.field public static final whitelist TYPE_CAR:I = 0x9

.field public static final whitelist TYPE_COMPANY_MAIN:I = 0xa

.field public static final whitelist TYPE_FAX_HOME:I = 0x5

.field public static final whitelist TYPE_FAX_WORK:I = 0x4

.field public static final whitelist TYPE_HOME:I = 0x1

.field public static final whitelist TYPE_ISDN:I = 0xb

.field public static final whitelist TYPE_MAIN:I = 0xc

.field public static final whitelist TYPE_MMS:I = 0x14

.field public static final whitelist TYPE_MOBILE:I = 0x2

.field public static final whitelist TYPE_OTHER:I = 0x7

.field public static final whitelist TYPE_OTHER_FAX:I = 0xd

.field public static final whitelist TYPE_PAGER:I = 0x6

.field public static final whitelist TYPE_RADIO:I = 0xe

.field public static final whitelist TYPE_TELEX:I = 0xf

.field public static final whitelist TYPE_TTY_TDD:I = 0x10

.field public static final whitelist TYPE_WORK:I = 0x3

.field public static final whitelist TYPE_WORK_MOBILE:I = 0x11

.field public static final whitelist TYPE_WORK_PAGER:I = 0x12


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/ContactsContract$Data;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    const-string v1, "filter_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final greylist-max-o getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .locals 1

    const/16 v0, 0x3fd

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const p0, 0x1040c49

    return p0

    :pswitch_0
    const p0, 0x1040c4f

    return p0

    :pswitch_1
    const p0, 0x1040c44

    return p0

    :pswitch_2
    const p0, 0x1040c59

    return p0

    :pswitch_3
    const p0, 0x1040c58

    return p0

    :pswitch_4
    const p0, 0x1040c56

    return p0

    :pswitch_5
    const p0, 0x1040c55

    return p0

    :pswitch_6
    const p0, 0x1040c54

    return p0

    :pswitch_7
    const p0, 0x1040c52

    return p0

    :pswitch_8
    const p0, 0x1040c4e

    return p0

    :pswitch_9
    const p0, 0x1040c4d

    return p0

    :pswitch_a
    const p0, 0x1040c47

    return p0

    :pswitch_b
    const p0, 0x1040c46

    return p0

    :pswitch_c
    const p0, 0x1040c45

    return p0

    :pswitch_d
    const p0, 0x1040c51

    return p0

    :pswitch_e
    const p0, 0x1040c53

    return p0

    :pswitch_f
    const p0, 0x1040c4a

    return p0

    :pswitch_10
    const p0, 0x1040c4b

    return p0

    :pswitch_11
    const p0, 0x1040c57

    return p0

    :pswitch_12
    const p0, 0x1040c50

    return p0

    :pswitch_13
    const p0, 0x1040c4c

    return p0

    :cond_0
    const p0, 0x1040c48

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
