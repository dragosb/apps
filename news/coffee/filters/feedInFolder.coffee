###
# ownCloud - News app
#
# @author Bernhard Posselt
# Copyright (c) 2012 - Bernhard Posselt <nukeawhale@gmail.com>
#
# This file is licensed under the Affero General Public License version 3 or later.
# See the COPYING-README file
#
###

angular.module('News').filter 'feedInFolder', ->
    return (feeds, folderId) ->
        result = []
        for feed in feeds
            if feed.folder == folderId
                result.push(feed)
        return result