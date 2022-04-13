<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template name="R600">
        <xsl:for-each select="//datafield[@tag = '600']">
            <!-- $a, $b $d $D ($f ; $c) - $x - $y -$z -->
            <xsl:variable name="group_1">
                <xsl:call-template name="joinGroupMembers">
                    <xsl:with-param name="elements" select="subfield[@code='a' or @code='d' or @code='D']" />
                    <xsl:with-param name="separator" select="' '" />
                </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="group_2">
                <xsl:value-of select="subfield[@code='b']" />
            </xsl:variable>

            <xsl:variable name="group_3">
                <xsl:call-template name="joinGroupMembers">
                    <xsl:with-param name="elements" select="subfield[@code='f' or @code='c']" />
                    <xsl:with-param name="separator" select="' ; '" />
                    <xsl:with-param name="before" select="'('" />
                    <xsl:with-param name="after" select="')'" />
                </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="group_4">
                <xsl:call-template name="subdivisions" />
            </xsl:variable>

            <xsl:call-template name="joinGroups">
                <xsl:with-param name="group_1" select="$group_1" />
                <xsl:with-param name="separator_1" select="', '" />
                <xsl:with-param name="group_2" select="$group_2" />
                <xsl:with-param name="separator_2" select="' '" />
                <xsl:with-param name="group_3" select="$group_3" />
                <xsl:with-param name="separator_3" select="' -- '" />
                <xsl:with-param name="group_4" select="$group_4" />
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="R601">
        <xsl:for-each select="//datafield[@tag = '601']">
            <!-- $a , $g. $b*. ($c* ; $d* ; $e* ; $f) - $x - $y - $z -->
            <xsl:variable name="group_1">
                <xsl:call-template name="joinGroupMembers">
                    <xsl:with-param name="elements" select="subfield[@code='a' or @code='g']" />
                    <xsl:with-param name="separator" select="', '" />
                </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="group_2">
                <xsl:call-template name="joinGroupMembers">
                    <xsl:with-param name="elements" select="subfield[@code='b']" />
                    <xsl:with-param name="separator" select="'. '" />
                </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="group_3">
                <xsl:call-template name="joinGroupMembers">
                    <xsl:with-param name="elements" select="subfield[@code='c' or @code='d' or @code='e' or @code='f']" />
                    <xsl:with-param name="separator" select="' ; '" />
                    <xsl:with-param name="before" select="'('" />
                    <xsl:with-param name="after" select="')'" />
                </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="group_4">
                <xsl:call-template name="subdivisions" />
            </xsl:variable>

            <xsl:call-template name="joinGroups">
                <xsl:with-param name="group_1" select="$group_1" />
                <xsl:with-param name="separator_1" select="'. '" />
                <xsl:with-param name="group_2" select="$group_2" />
                <xsl:with-param name="separator_2" select="' '" />
                <xsl:with-param name="group_3" select="$group_3" />
                <xsl:with-param name="separator_3" select="' -- '" />
                <xsl:with-param name="group_4" select="$group_4" />
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="R602">
        <xsl:for-each select="//datafield[@tag = '602']">
            <!-- $a ($c ; $d* ; $f) - $x - $y - $z -->
            <xsl:variable name="group_1">
                <xsl:value-of select="subfield[@code='a']" />
            </xsl:variable>

            <xsl:variable name="group_2">
                <xsl:call-template name="joinGroupMembers">
                    <xsl:with-param name="elements" select="subfield[@code='c' or @code='d' or @code='f']" />
                    <xsl:with-param name="separator" select="' ; '" />
                    <xsl:with-param name="before" select="'('" />
                    <xsl:with-param name="after" select="')'" />
                </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="group_3">
                <xsl:call-template name="subdivisions" />
            </xsl:variable>

            <xsl:call-template name="joinGroups">
                <xsl:with-param name="group_1" select="$group_1" />
                <xsl:with-param name="separator_1" select="' '" />
                <xsl:with-param name="group_2" select="$group_2" />
                <xsl:with-param name="separator_2" select="' -- '" />
                <xsl:with-param name="group_3" select="$group_3" />
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="R604">
        <xsl:for-each select="//datafield[@tag = '604']">
            <!-- $a. $t -$x -$y -$z  -->
            <xsl:variable name="group_1">
                <xsl:value-of select="subfield[@code='a']" />
            </xsl:variable>

            <xsl:variable name="group_2">
                <xsl:value-of select="subfield[@code='t']" />
            </xsl:variable>

            <xsl:variable name="group_3">
                <xsl:call-template name="subdivisions" />
            </xsl:variable>

            <xsl:call-template name="joinGroups">
                <xsl:with-param name="group_1" select="$group_1" />
                <xsl:with-param name="separator_1" select="'. '" />
                <xsl:with-param name="group_2" select="$group_2" />
                <xsl:with-param name="separator_2" select="' -- '" />
                <xsl:with-param name="group_3" select="$group_3" />
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="R605">
        <xsl:for-each select="//datafield[@tag = '605']">
            <!-- "$a. $h*. $i* $k?. $l?. $m? ($n* ; ). $q? - $x? - $y? - $z" -->
            <xsl:variable name="group_1">
                <xsl:call-template name="joinGroupMembers">
                    <xsl:with-param name="elements" select="subfield[@code='a' or @code ='h']" />
                    <xsl:with-param name="separator" select="'. '" />
                </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="group_2">
                <xsl:call-template name="joinGroupMembers">
                    <xsl:with-param name="elements" select="subfield[@code='i' or @code='k' or @code='l' or @code='m']" />
                    <xsl:with-param name="separator" select="' '" />
                </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="group_3">
                <xsl:call-template name="joinGroupMembers">
                    <xsl:with-param name="elements" select="subfield[@code='n']" />
                    <xsl:with-param name="separator" select="' ; '" />
                    <xsl:with-param name="before" select="'('" />
                    <xsl:with-param name="after" select="')'" />
                </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="group_4">
                <xsl:value-of select="subfield[@code='q']" />
            </xsl:variable>

            <xsl:variable name="group_5">
                <xsl:call-template name="subdivisions" />
            </xsl:variable>

            <xsl:call-template name="joinGroups">
                <xsl:with-param name="group_1" select="$group_1" />
                <xsl:with-param name="separator_1" select="'. '" />
                <xsl:with-param name="group_2" select="$group_2" />
                <xsl:with-param name="separator_2" select="' '" />
                <xsl:with-param name="group_3" select="$group_3" />
                <xsl:with-param name="separator_3" select="'. '" />
                <xsl:with-param name="group_4" select="$group_4" />
                <xsl:with-param name="separator_4" select="' -- '" />
                <xsl:with-param name="group_5" select="$group_5" />
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="R606">
        <xsl:for-each select="//datafield[@tag = '606']">
            <xsl:call-template name="basic_rameau" />
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="R607">
        <xsl:for-each select="//datafield[@tag = '607']">
            <xsl:call-template name="basic_rameau" />
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="R608">
        <xsl:for-each select="//datafield[@tag = '608']">
            <xsl:call-template name="basic_rameau" />
        </xsl:for-each>
    </xsl:template>

    <!-- Certaines zones suivent le même schéma 606 607 608 -->
    <xsl:template name="basic_rameau">
        <!-- $a - $x - $y - $z -->
        <xsl:variable name="group_1">
            <xsl:call-template name="joinGroupMembers">
                <xsl:with-param name="elements" select="subfield[@code='a']" />
                <xsl:with-param name="separator" select="' -- '" />
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="group_2">
            <xsl:call-template name="subdivisions" />
        </xsl:variable>

        <xsl:call-template name="joinGroups">
            <xsl:with-param name="group_1" select="$group_1" />
            <xsl:with-param name="separator_1" select="' -- '" />
            <xsl:with-param name="group_2" select="$group_2" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="subdivisions">
        <xsl:call-template name="joinGroupMembers">
            <xsl:with-param name="elements" select="subfield[@code='x' or @code='y' or @code='z']" />
            <xsl:with-param name="separator" select="' -- '" />
        </xsl:call-template>
    </xsl:template>

    <!-- Joint les éléments d'un groupe -->
    <xsl:template name="joinGroupMembers">
        <xsl:param name="elements" />
        <xsl:param name="separator" />
        <xsl:param name="before" />
        <xsl:param name="after" />

        <xsl:variable name="joined_elements">
            <xsl:for-each select="$elements">
                <xsl:if test="position() != 1">
                    <xsl:value-of select="$separator" />
                </xsl:if>
                <xsl:value-of select="." />
            </xsl:for-each>
        </xsl:variable>

        <xsl:if test="string-length($joined_elements) > 0">
            <xsl:if test="$before">
                <xsl:value-of select="$before" />
            </xsl:if>

            <xsl:value-of select="$joined_elements" />

            <xsl:if test="$after">
                <xsl:value-of select="$after" />
            </xsl:if>
        </xsl:if>
    </xsl:template>

    <!-- Joint les groupes -->
    <xsl:template name="joinGroups">
        <xsl:param name="group_1" />
        <xsl:param name="separator_1" />
        <xsl:param name="group_2" />
        <xsl:param name="separator_2" />
        <xsl:param name="group_3" />
        <xsl:param name="separator_3" />
        <xsl:param name="group_4" />
        <xsl:param name="separator_4" />
        <xsl:param name="group_5" />

        <xsl:if test="string-length($group_1) > 0">
            <xsl:value-of select="$group_1" />
        </xsl:if>

        <xsl:if test="string-length($group_2) > 0">
            <xsl:if test="string-length($group_1) > 0">
                <xsl:value-of select="$separator_1" />
            </xsl:if>
            <xsl:value-of select="$group_2" />
        </xsl:if>

        <xsl:if test="string-length($group_3) > 0">
            <xsl:if test="string-length($group_1) > 0 or string-length($group_2) > 0">
                <xsl:value-of select="$separator_2" />
            </xsl:if>
            <xsl:value-of select="$group_3" />
        </xsl:if>

        <xsl:if test="string-length($group_4) > 0">
            <xsl:if test="string-length($group_1) > 0 or string-length($group_2) > 0 or string-length($group_3) > 0">
                <xsl:value-of select="$separator_3" />
            </xsl:if>
            <xsl:value-of select="$group_4" />
        </xsl:if>

        <xsl:if test="string-length($group_5) > 0">
            <xsl:if test="string-length($group_1) > 0 or string-length($group_2) > 0 or string-length($group_3) > 0 or string-length($group_4) > 0">
                <xsl:value-of select="$separator_4" />
            </xsl:if>
            <xsl:value-of select="$group_5" />
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>